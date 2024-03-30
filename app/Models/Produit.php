<?php

namespace App\Models;

use App\Models\Categorie;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Produit extends Model
{
    use HasFactory;
    protected $primaryKey ='idP'; 
    public function categorie(): HasOne {
        return $this->hasOne(Categorie::class);
    }

    public function typeConteneur(): HasOne {
        return $this->hasOne(TypeConteneur::class);
    }

}

Produit::create(
    [
    'idP' => 2, 
    'libelle' => 'Vanille',
    'photo' => 'vanille.jpg',
    'unite' => 20,
    'vie' => 90    
    ],
    [
    'idP' => 2, 
    'libelle' => 'café',
    'photo' => 'cafe.jpg',
    'unite' => 100,
    'vie' => 60    
    ],
    [
    'idP' => 3, 
    'libelle' => 'Cacao',
    'photo' => 'cacao.jpg',
    'unite' => 150,
    'vie' => 25   
    ],
    [
    'idP' => 3, 
    'libelle' => 'Poivre',
    'photo' => 'poivre.jpg',
    'unite' => 150,
    'vie' => 25   
    ],

);