<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Provenance>
 */
class ProvenanceFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        // $arr = ['Antananarivo', 'Toamasina', 'Antsirabe', 'Fianarantsoa', 'Mahajanga', 'Toliara', 'Antsiranana', 'Morondava', 'Ambanja', 'Ambositra'];
        // $p = \App\Models\Provenance::All()->last() ? \App\Models\Provenance::All()->last()->id + 1 : 0;
        return [
            'lieuP' => fake()->country(),
        ];
    }
}
