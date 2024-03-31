<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Historique>
 */
class HistoriqueFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $tableau = ['Litchis', 'Bananes', 'Combavas', 'Citrons','Poivre', 'Girofle', 'Cannelle', 'Gingembre', 'Curcuma', 'Poivre sauvage', 'Vanille', 'Piment', 'Muscade', 'Café', 'Combava', 'Citron', 'Banane'];
        $tableau2 = ["Fruit" , "Epice"];
        $indexAleatoire = array_rand($tableau);
        $indexAleatoire2 = array_rand($tableau2);
        $elementAleatoire = $tableau[$indexAleatoire];
        $elementAleatoire2 = $tableau2[$indexAleatoire2];
        $y = rand(0, 10);
        $t = rand(0,1);
        $lieuxMadagascar = array(
            array("Antananarivo", "Toamasina", "Antsirabe", "Fianarantsoa", "Mahajanga", "Toliara", "Antsiranana", "Morondava", "Ambanja", "Ambositra"),
            array("Diego-Suarez", "Tamatave", "Toamasina", "Fianarantsoa", "Antsiranana", "Toliara", "Antsiranana", "Morondava", "Ambanja", "Ambositra")
        );
        $i = rand(0,9);
        return [
            //
            'type'=> $t == 1 ? 'E' : 'S',
            'Date'=> fake()->date(),
            'Produit'=> $elementAleatoire,
            'Categorie'=> $elementAleatoire2,
            'unite'=> $y,
            'quantite'=> $y*rand(5,50),
            'conteneur'=> rand(0, 10),
            'user'=> fake()->name(),
            'Lieu'=> $lieuxMadagascar[$t][$i]
        ];
    }
}
