<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Stocker>
 */
class StockerFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            //
            'idPro'=> fake()->numberBetween(1,10),
            'idCont'=> fake()->numberBetween(1,12),
            'idPr'=> fake()->numberBetween(1,4),
            'date'=> fake()->datetime(),
            'quantite'=> fake()->numberBetween(1,5),
            'vie'=> fake()->numberBetween(1,3),
        ];
    }
}
