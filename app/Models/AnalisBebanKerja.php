<?php
namespace App\Models;

class AnalisBebanKerja {
    public $id;
    public $anjab_id;
    public $user_id;
    public $beban_kerja_tetap;
    public $beban_kerja_tidak_tetap;
    public $jam_kerja_efektif;
    public $volume_kegiatan;
    public $standar_waktu_kerja;
    public $hasil_analisis;
    public $rekomendasi;
    public $status;
    public $created_at;
    public $updated_at;
}
?>
