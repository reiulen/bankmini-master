<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TabunganSiswa extends Model
{
    use HasFactory;
    protected $guarded = ['id'];

    public function siswa()
    {
        return $this->belongsTo(Siswa::class);
    }

    public function petugas()
    {
        return $this->belongsTo(User::class, 'petugas_id');
    }

   public function scopeFilter($query, $filter)
    {
        $query->when($filter['tipe'] ?? false, function ($query) use ($filter) {
            return $query->where('tipe', $filter['tipe']);
        })->when($filter['petugas'] ?? false, function ($query) use ($filter) {
            return $query->where('petugas_id', $filter['petugas']);
        })->when($filter['kelas'] ?? false, function ($query) use ($filter) {
            return $query->where('kelas_id', $filter['kelas']);
        })->when($filter->id ?? false, function ($query) use ($filter) {
            return $query->where('siswa_id', $filter->id);
        });
    }

    public function scopeFilterCetak($query, $filter)
    {
        $query->when($filter->tipe ?? false, function ($query) use ($filter) {
            return $query->where('tipe', $filter->tipe);
        })->when($filter->petugas ?? false, function ($query) use ($filter) {
            return $query->where('petugas_id', $filter->petugas);
        })->when($filter->kelas ?? false, function ($query) use ($filter) {
            return $query->where('kelas_id', $filter->kelas);
        })->when($filter->id ?? false, function ($query) use ($filter) {
            return $query->where('siswa_id', $filter->id);
        })->when($filter->by ?? false, function ($query) use ($filter) {
            $by = explode('|', $filter->by);
            return $query->orderBy($by[0], $by[1]);
        });
    }

    public function scopeOrder($query, $order)
    {
        $query->when($order['by'] ?? false, function ($query) use ($order) {
            $by = explode('|', $order['by']);
            return $query->orderBy($by[0], $by[1]);
        });
    }

    public function scopeTanggal($query, $tanggal)
    {
        $query->when($tanggal[0] ?? false, function ($query) use ($tanggal) {
            return $query->whereBetween('created_at', [$tanggal[0], $tanggal[1]]);
        });
    }
}
