<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Provenance extends Model
{
    use HasFactory;
    protected $primaryKey = 'idP';
    public $timestamps = false;
}
