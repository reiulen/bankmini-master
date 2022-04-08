<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Spatie\Permission\Traits\HasRoles;

class Siswa extends Authenticatable
{
    use HasApiTokens;
    use HasFactory;
    use Notifiable;
    use HasRoles;

    protected $table = 'siswa';
    protected $guarded = ['id'];

    public function Kelas(){
        return $this->belongsTo(Kelas::class);
    }

    public function Pekerjaan(){
        return $this->belongsTo(Pekerjaan::class);
    }

    public function jurusan()
    {
        return $this->belongsTo(Jurusan::class, 'jurusan_id');
    }

    public function tahunakademik()
    {
        return $this->belongsTo(TahunAkademik::class, 'tahun_akademik_id');
    }

    public function tabungansiswa()
    {
        return $this->hasMany(TabunganSiswa::class, 'siswa_id');
    }

    public function scopeFilter($query, $filter)
    {
        $query->when($filter['j_kelamin'] ?? false, function ($query) use ($filter) {
            return $query->where('jenis_kelamin', $filter['j_kelamin']);
        })->when($filter['kelas'] ?? false, function ($query) use ($filter) {
            return $query->where('kelas_id', $filter['kelas']);
        })->when($filter['tahun_akademik'] ?? false, function ($query) use ($filter) {
            return $query->where('tahun_akademik_id', $filter['tahun_akademik']);
        })->when($filter['jurusan'] ?? false, function ($query) use ($filter) {
            return $query->where('jurusan_id', $filter['jurusan']);
        });
    }

    public function scopeOrder($query, $order)
    {
        $query->when($order['by'] ?? false, function ($query) use ($order) {
            $by = explode('|', $order['by']);
            return $query->orderBy($by[0], $by[1]);
        });
    }

    public function scopeFilterTable($query, $filter)
    {
        $query->when($filter->j_kelamin ?? false, function ($query) use ($filter) {
            return $query->where('jenis_kelamin', $filter->j_kelamin);
        })->when($filter->kelas ?? false, function ($query) use ($filter) {
            return $query->where('kelas_id', $filter->kelas);
        })->when($filter->tahun_akademik ?? false, function ($query) use ($filter) {
            return $query->where('tahun_akademik_id', $filter->tahun_akademik);
        })->when($filter->jurusan ?? false, function ($query) use ($filter) {
            return $query->where('jurusan_id', $filter->jurusan);
        })->when($filter->by ?? false, function ($query) use ($filter) {
            $by = explode('|', $filter->by);
            return $query->orderBy($by[0], $by[1]);
        });
    }

    public function scopeFilterCetak($query, $filter)
    {
        $query->when($filter->j_kelamin ?? false, function ($query) use ($filter) {
            return $query->where('jenis_kelamin', $filter->j_kelamin);
        })->when($filter->kelas ?? false, function ($query) use ($filter) {
            return $query->where('kelas_id', $filter->kelas);
        })->when($filter->tahun_akademik ?? false, function ($query) use ($filter) {
            return $query->where('tahun_akademik_id', $filter->tahun_akademik );
        })->when($filter->jurusan ?? false, function ($query) use ($filter) {
            return $query->where('jurusan_id', $filter->jurusan);
        });
    }

    public function scopeOrderCetak($query, $order)
    {
        $query->when($order->by ?? false, function ($query) use ($order) {
            $by = explode('|', $order->by);
            return $query->orderBy($by[0], $by[1]);
        });
    }
    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
}
