<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Stocker extends Model
{
    use HasFactory;
    protected $primaryKey = "idStock";

    public function produit(): BelongsTo
    {
        return $this->belongsTo(Produit::class, 'idPro', 'idPro');
    }
    
    public function conteneur(): BelongsTo
    {
        return $this->belongsTo(Conteneur::class, 'idCont', 'idCont');
    }
    
    public function provenance(): BelongsTo
    {
        return $this->belongsTo(Provenance::class, 'idP', 'idP');
    }

}
