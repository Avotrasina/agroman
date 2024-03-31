<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\{BelongsToMany,BelongsTo};

class Conteneur extends Model
{
    use HasFactory;
    protected $primaryKey = 'idCont';
   
    public function produits(): BelongsToMany
    {
        return $this->belongsToMany(Produit::class, 'stockers', 'idCont', 'idP');
    }

    public function type(): BelongsTo
    {
        return $this->belongsTo(TypeConteneur::class, 'type', 'idType');
    }

}
