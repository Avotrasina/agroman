<?php

namespace App\Models;

use App\Models\Categorie;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\{HasOne,HasMany,BelongsTo,BelongsToMany};
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Produit extends Model
{
    use HasFactory;
    protected $primaryKey ='idPro'; 
    protected $fillable = ['idPro'];
    public function categories(): BelongsTo
    {
        return $this->belongsTo(Categorie::class, 'idCat', 'idCat');
    }

    public function conteneurs(): belongsToMany
    {
        return $this->belongsToMany(Conteneur::class, 'stockers', 'idPro', 'idCont');
    }
    //Relation entre produit et son conteneur et non son type de conteneur
    public function typeConteneur(): BelongsTo
    {
        return $this->belongsTo(TypeConteneur::class, 'idTypeCont', 'idType');
    }
}


