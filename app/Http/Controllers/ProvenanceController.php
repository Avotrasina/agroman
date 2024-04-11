<?php

namespace App\Http\Controllers;

use App\Models\Provenance;
use Illuminate\Http\Request;

class ProvenanceController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $provenances = Provenance::all()->toJson();
        return $provenances;
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
        $provenance = new Provenance;
        $provenance->LieuP = $request->input("LieuP");
        $resultat = $provenance->save();
        return response()->json([
            'resultat' => $resultat
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(Provenance $provenance)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Provenance $provenance)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Provenance $provenance)
    {
        //
        $provenance = Provenance::find($request->input("idP"));
        if($provenance){
            $provenance->LieuP = $request->input("LieuP");
            $resultat = $provenance->save();
            return response()->json([
                'resultat' => $resultat
            ]);
        }
        return response()->json([
            'resultat' => false
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request)
    {
        //
        $provenance = Provenance::find($request->input("idP"));
        if($provenance){
            $resultat = $provenance->delete();
            return response()->json([
                'resultat' => $resultat
            ]);
        }
        return response()->json([
            'resultat' => false
        ]);
    }
}
