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
        $produit = \App\Models\Produit::find(random_int(1,10));
        $y = random_int(1,20);
        return [
            //
            'type'=> ((random_int(0,20000))/2 == 1) ? 'E' : 'S',
            'Produit'=> $produit->libelle,
            'Categorie'=> $produit->categories->nom,
            'unite'=> $y,
            'quantite'=> intval($produit->unite) * $y,
            'conteneur'=> rand(0, 10),
            'user'=> fake()->name(),
            'Lieu'=> \App\Models\Destination::find(random_int(1,3)),
            'created_at' => fake()->datetime()
        ];
    }
}
