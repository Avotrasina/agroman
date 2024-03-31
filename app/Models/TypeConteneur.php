<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class TypeConteneur extends Model
{
    use HasFactory;
    protected $primaryKey = "idType";

    public function produits(): HasMany{
        return $this->hasMany(Produit::class, 'idTypeCont', 'idType');
    }

    public function conteneurs(): HasMany
    {
        return $this->hasMany(Conteneur::class, 'type', 'idType');
    }

}


