<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DanaAwal extends Model
{
    use HasFactory;
    protected $guarded = ['id'];

    public function kelas()
    {
        return $this->belongsTo(Kelas::class);
    }

    public function tahunakademik()
    {
        return $this->belongsTo(TahunAkademik::class, 'tahun_akademik_id');
    }

    public function scopeFilter($query, $filter)
    {
        $query->when($filter->tahun_akademik ?? false, function ($query) use ($filter) {
            return $query->where('tahun_akademik_id', $filter->tahun_akademik);
        });
    }
}
