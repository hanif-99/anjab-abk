# 📚 e-ANJAB & e-ABK

**Aplikasi Analisis Jabatan dan Analisis Beban Kerja Elektronik**

Sistem informasi berbasis web untuk membantu organisasi melakukan analisis jabatan dan analisis beban kerja secara sistematis dan otomatis.

## 🎯 Tentang Aplikasi

### e-ANJAB (Analisis Jabatan)
- Menganalisis 15 komponen data jabatan
- Identitas jabatan, iktisar, kualifikasi
- Tugas pokok, hasil kerja, bahan kerja
- Perangkat kerja, tanggung jawab, wewenang
- Korelasi jabatan, kondisi lingkungan, resiko bahaya
- Syarat jabatan, prestasi kerja, kelas jabatan

### e-ABK (Analisis Beban Kerja)
- Menganalisis beban kerja tetap dan tidak tetap
- Jam kerja efektif dan volume kegiatan
- Standar waktu kerja dan efisiensi
- Hasil dan rekomendasi perbaikan

## 👥 User Roles (7 Tipe Pengguna)

1. **Admin** - Administrator Sistem
2. **Ortala** - Organisasi & Tata Laksana
3. **Kementerian** - Kementerian & LPNK
4. **SKPD** - SKPD/OPD Pemda Provinsi & Kabupaten/Kota
5. **Rumah Sakit** - Institusi Rumah Sakit
6. **Perguruan Tinggi** - Institusi Pendidikan Tinggi
7. **BLU/BUMN/BUMD** - Badan Layanan Umum & Bisnis

## ✨ Fitur Utama

- ✅ Autentikasi & Autorizasi Multi-role
- ✅ Master Data Analisis Jabatan (15 Komponen)
- ✅ Master Data Analisis Beban Kerja
- ✅ Form Input Data Lengkap & Validasi
- ✅ Sistem Approval & Workflow
- ✅ Export Laporan (PDF, Excel, Word)
- ✅ Barcode Generation & QR Code
- ✅ Dashboard & Analytics
- ✅ Manajemen Dokumen
- ✅ Tracking & Audit Trail

## 🚀 Quick Start

### Prerequisites
- PHP 8.1+
- MySQL 8.0+ atau MariaDB 10.4+
- Composer
- Node.js & npm
- Git

### Installation

```bash
# 1. Clone repository
git clone https://github.com/hanif-99/anjab-abk.git
cd anjab-abk

# 2. Install dependencies
composer install
npm install

# 3. Setup environment
cp .env.example .env
php artisan key:generate

# 4. Setup database
php artisan migrate --seed

# 5. Build assets
npm run build

# 6. Run server
php artisan serve
```

Aplikasi akan berjalan di: `http://localhost:8000`

## 🔓 Default Login Credentials

| No | Role | Email | Password |
|----|------|-------|----------|
| 1 | **Admin** | admin@anjab.local | password |
| 2 | **Ortala** | ortala@anjab.local | password |
| 3 | **Kementerian** | kementerian@anjab.local | password |
| 4 | **SKPD** | skpd@anjab.local | password |
| 5 | **Rumah Sakit** | rumahsakit@anjab.local | password |
| 6 | **Perguruan Tinggi** | perguruantinggi@anjab.local | password |
| 7 | **BLU/BUMN/BUMD** | blu@anjab.local | password |

## 📖 Documentation

- [Panduan Instalasi Windows + XAMPP](./PANDUAN_WINDOWS_XAMPP.md)
- [Panduan Instalasi Lengkap](./INSTALL_GUIDE.md)

## 🛠️ Tech Stack

- **Backend**: PHP 8.1+ dengan Laravel Framework
- **Frontend**: HTML5, Bootstrap 5, Vue.js
- **Database**: MySQL 8.0+ atau MariaDB 10.4+
- **Package Managers**: Composer & npm

## 📞 Support

- **Email**: timrifil@gmail.com
- **Website**: https://rifil.co.id
- **Phone**: 0859-1065-02195

## 📄 License

MIT License

---

**Version**: 1.0.0 | **Created**: 2026-05-26
