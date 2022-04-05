<?php

namespace App\Models;

use GuzzleHttp\Psr7\Request;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PembayaranSiswa extends Model
{
    use HasFactory;
    protected $guarded = ['id'];

    public function danaawal()
    {
        return $this->belongsTo(DanaAwal::class, 'dana_awal_id');
    }

    public function petugas()
    {
        return $this->belongsTo(User::class, 'petugas_id');
    }

    public function siswa()
    {
        return $this->belongsTo(Siswa::class, 'siswa_id');
    }

    public function scopeFilter($query, $filter)
    {
        $query->when($filter['pembayaran'] ?? false, function($query) use ($filter) {
            return $query->where('dana_awal_id', $filter['pembayaran']);
        })->when($filter['petugas'] ?? false, function($query) use ($filter) {
            return $query->where('petugas_id', $filter['petugas']);
        })->when($filter['status'] ?? false, function($query) use ($filter) {
            if($filter['status'] == 'lunas') {
                return $query->where('sisa_tagihan', '0');
            } else {
                return $query->where('sisa_tagihan', '!=', '0');
            }
        });
    }

    public function scopeOrder($query, $filter)
    {
        $query->when($filter['by'] ?? false, function($query) use ($filter) {
            $by = explode('|', $filter['by']);
            return $query->orderBy($by[0], $by[1]);
        });
    }

    public function scopeFilterTable($query, $filter)
    {
        $query->when($filter->kelas ?? false, function ($query) use ($filter) {
            return $query->where('kelas_id', $filter->kelas);
        })->when($filter->tahun_akademik ?? false, function ($query) use ($filter) {
            return $query->where('tahun_akademik_id', $filter->tahun_akademik);
        })->when($filter->jurusan ?? false, function ($query) use ($filter) {
            return $query->where('jurusan_id', $filter->jurusan);
        });;
    }

     public function scopeTanggal($query, $tanggal)
    {
        $query->when($tanggal[0] ?? false, function ($query) use ($tanggal) {
            return $query->whereBetween('created_at', [$tanggal[0], $tanggal[1]]);
        });
    }
}
