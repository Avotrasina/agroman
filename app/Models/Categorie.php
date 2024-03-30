<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Categorie extends Model
{
    use HasFactory;
    public function produits(): HasMany {
        return $this->hasMany(Produit::class);
    }
}
Categorie::create(
    [
    'idCat' => 1,
    'nom' => 'Epices'
    ],

    [
    'idCat' => 2,
    'nom' => 'Huiles'
    ],
    
    [
    'idCat' => 1,
    'nom' => 'Fruits'
    ],
);
