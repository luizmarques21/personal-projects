<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Collection;

class Temporada extends Model {

    public $timestamps = false;
    protected $fillable = ['numero'];

    public function episodios() {
        return $this->hasMany(Episodio::class);
    }

    public function serie() {
        return $this->belongsTo(Serie::class);
    }

    public function getEpisodiosAssistidos(): Collection {
        return $this->episodios->filter(function (Episodio $episodio) {
            return $episodio->assistido;
        });
    }

}
