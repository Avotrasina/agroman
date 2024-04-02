<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\{BelongsToMany,BelongsTo, HasMany};

class Conteneur extends Model
{
    use HasFactory;
    protected $primaryKey = 'idCont';
   
    public function produits(): belongsToMany
    {
        return $this->belongsToMany(Produit::class, 'stockers', 'idCont', 'idPro');
    }

    public function type(): HasOne
    {
        return $this->HasOne(TypeConteneur::class, 'idCont');
    }

}
