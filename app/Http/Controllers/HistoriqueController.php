<?php

namespace App\Http\Controllers;

use App\Models\{Destination,Categorie,Produit,Historique,Stocker, Conteneur, TypeConteneur, Provenance};
use Illuminate\Http\Request;

class HistoriqueController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $categories = Categorie::all();
        $typeConteneurs = TypeConteneur::all();
        $destinations = Destination::all();
        $provenances = Provenance::all();
        // $users = User::all();

        $historiques = Historique::all()->sortByDesc("created_at")->pluck("created_at")->toArray();
        return response()->json([
            'categories' => $categories,
            'destinations' => $destinations,
            'typeConteneurs' => $typeConteneurs,
            'provenances' => $provenances,
            // 'users' => $users,
            'historiques' => $historiques
        ]);
    }
    
    public function indexIN()
    {
        //mbola  tokonny hisy lay capacité anlay conteneur
        $contenanceTotal = [];
        
        $contenanceTotal[] = TypeConteneur::all()->mapWithKeys(function ($type) {
                return [$type->nom => (intval($type->conteneurs->sum("capacite")) - $type->produits->sum("Qte")) ];
                // return [$produit->getKey() => $request->input("qte".$produit->getKey()) ? intval($request->input("qte".$produit->getKey())) : 0 ];
            })->toArray();
        $produits = Produit::all();
        $categories = Categorie::all();
        $provenances = Provenance::all();
        dd(response()->json([
            'produits' => $produits,
            'categories' => $categories,
            'provenances' => $provenances,
            'contenance' => $contenanceTotal
        ]));
        return response()->json([
            'produits' => $produits,
            'categories' => $categories,
            'provenances' => $provenances,
            'contenance' => $contenanceTotal
        ]);
    }

    public function indexOUT()
    {

        $produits = Produit::all();
        $categories = Categorie::all();
        $destinations = Destination::all();

        return response()->json([
            'produits' => $produits,
            'categories' => $categories,
            'destinations' => $destinations
        ]);
    }
    
    public function in(Request $request)
    {
        $resultat = true;
        // $Capacity = [];
        // $Capacity2 = [];
        // $Quantity = [];
        // $Quantity2 = [];
        foreach (TypeConteneur::all() as $typeC) {
            $q = $typeC->produits->mapWithKeys(function ($produit) {
                return [$produit->getKey() => random_int(0,10)];
                // return [$produit->getKey() => $request->input("qte".$produit->getKey()) ? intval($request->input("qte".$produit->getKey())) : 0 ];
            })->toArray();
            $c = $typeC->conteneurs->mapWithKeys(function ($conteneur) {
                $reste = intval($conteneur->capacite) - intval($conteneur->produits()->sum('quantite'));
                return [$conteneur->getKey() => $reste];
            })->toArray();
            // array_push($Capacity2, $c);
            // array_push($Quantity2, $q);
            $cle = $typeC->conteneurs->pluck('idCont')->toArray();
            $compte = $typeC->produits->pluck('idPro')->toArray();
            $j = 0;
            for($i = 0 ; $i < sizeof($compte) ; $i++)
            {
                $stored = 0;
                if($q[$compte[$i]] > $c[$cle[$j]]) {
                    $q[$compte[$i]] -= $c[$cle[$j]];
                    $stored = $c[$cle[$j]];
                    $c[$cle[$j]] = 0;
                }
                else{
                    $c[$cle[$j]] -= $q[$compte[$i]];
                    $stored = $q[$compte[$i]];
                    $q[$compte[$i]] = 0;
                }
                //stocker
                $stock = new Stocker;
                $stock->idPro = $compte[$i];
                $stock->idCont = $cle[$j];
                $stock->idPr = 1; // $request->input("provenance")
                $stock->quantite = $stored;
                $stock->vie = Produit::find($compte[$i]) ? Produit::find($compte[$i])->vie : 0;
                // $resultat = $resultat && $stock->save();

                //produit
                $prod = Produit::find($compte[$i]);
                if($prod) {$prod->Qte +=  $stored; $prod->save();}

                //historique
                $histo = new Historique;
                $histo->type = "E";
                $histo->Produit = Produit::find($compte[$i]) ? Produit::find($compte[$i])->libelle : "Non-répértorié";
                $histo->Categorie = Produit::find($compte[$i]) && Produit::find($compte[$i])->categories ? Produit::find($compte[$i])->categories->nom : "Non-répértorié";
                $histo->unite = $stored;
                $histo->quantite = Produit::find($compte[$i]) ? intval(Produit::find($compte[$i])->unite) * $stored : -1; // poids de l'unité * nombre d'unité donné précedemment
                $histo->conteneur = Conteneur::find($cle[$j]) ? Conteneur::find($cle[$j])->nom : "Non-répértorié";
                // $histo->user = //utilisateur connécté
                $histo->Lieu = "LieuExemple"; //$request->input("provenance");
                // $resultat = $resultat && $histo->save();

                if($q[$compte[$i]] > $c[$cle[$j]]) {
                    $i--;
                    $j++;
                }

                echo $histo."\n";
                echo $stock."\n";

            }
            // array_push($Capacity, $c);
            // array_push($Quantity, $q);
        }
        dd("stop");
        // dd([$Capacity2,$Quantity2,$Quantity,$Capacity]);
        return response()->json(['resultat' => $resultat]);
    }
    
    public function out(Request $request)
    {
        //
        $produits = Produit::all();
        $resultat = true;
        foreach ($produits as $produit) {
            // if($request->input($produit->idPro)){
                $stocks = Stocker::where("idPro",intval($produit->idPro))->orderBy("vie","asc")->get();
                $quantite = 2;//quantité à faire sortir , $request->input ...
                foreach ($stocks as $stock) {
                    if($quantite == 0) break;
                    $sorti = intval($stock->quantite)<=$quantite ? intval($stock->quantite) : $quantite ;

                    //produit
                    if($produit) {$produit->Qte -=  $sorti; $produit->save();}

                     //historique
                     $histo = new Historique;
                     $histo->type = "S";
                     $histo->Produit = $produit->libelle;
                     $histo->Categorie = $produit->categories->nom;
                     $histo->unite = $sorti;
                     $histo->quantite = intval($produit->unite) * $sorti; // poids de l'unité * nombre d'unité donné précedemment
                     $histo->conteneur = $stock->conteneur->nom;
                     // $histo->user = //utilisateur connécté
                     $histo->Lieu = "Destination exemple"; //$request->input("destination");
                     // $resultat = $resultat && $histo->save();
                     if(intval($stock->quantite) <= $quantite){
                        $quantite -= $stock->quantite;
                        // $stock->delete();
                    }else{
                        $stock->quantite = $stock->quantite - $quantite;
                        // $stock->save();
                    }
                    echo $histo."\n";
                }
            // }
        }
        dd("stop");
        return response()->json(['resultat' => $resultat]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Historique $historique)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Historique $historique)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Historique $historique)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Historique $historique)
    {
        //
    }
}
