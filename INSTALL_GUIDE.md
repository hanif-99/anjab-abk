# 📚 PANDUAN INSTALASI LENGKAP e-ANJAB & e-ABK

## 🎯 Persyaratan Sistem (Requirements)

Sebelum memulai, pastikan laptop Anda memiliki:

### Hardware Minimum:
- **RAM:** 4 GB (recommended 8 GB)
- **Storage:** 2 GB free space
- **OS:** Windows 10+, macOS, atau Linux

### Software yang Harus Diinstall:

#### 1. **PHP 8.1 atau Lebih Tinggi**
#### 2. **Composer** (PHP Package Manager)
#### 3. **Node.js & npm** (untuk Frontend Assets)
#### 4. **MySQL 8.0 atau MariaDB 10.4+**
#### 5. **Git** (untuk clone repository)

---

## 📋 STEP 1: Install Prerequisites

### **A. Install PHP 8.1+ (Windows)**

#### Opsi 1: Menggunakan XAMPP (Paling Mudah - Recommended)
1. Download XAMPP dari: https://www.apachefriends.org/
2. Pilih versi **8.2** atau lebih tinggi
3. Install dengan default settings
4. Jalankan XAMPP Control Panel
5. Klik **Start** untuk Apache dan MySQL
6. Buka Command Prompt dan verify:
   ```bash
   php --version
   ```

#### Opsi 2: Install PHP Standalone
1. Download dari: https://windows.php.net/download
2. Extract ke `C:\php` atau lokasi lain
3. Add ke PATH environment variable
4. Verify di Command Prompt:
   ```bash
   php --version
   ```

### **B. Install Composer (Windows/Mac/Linux)**

1. Download installer dari: https://getcomposer.org/download/
2. Jalankan installer dan ikuti wizard
3. Pilih PHP executable path (biasanya auto-detect)
4. Selesai
5. Verify di Command Prompt/Terminal:
   ```bash
   composer --version
   ```

### **C. Install Node.js & npm (Windows/Mac/Linux)**

1. Download LTS version dari: https://nodejs.org/
2. Install dengan default settings
3. Restart Command Prompt/Terminal
4. Verify:
   ```bash
   node --version
   npm --version
   ```

### **D. Install MySQL/MariaDB (Windows)**

#### Opsi 1: MySQL Community Server
1. Download dari: https://dev.mysql.com/downloads/mysql/
2. Jalankan installer
3. Pilih MySQL Server 8.0.x
4. Setup sebagai Windows Service
5. Configure MySQL Server (port 3306, default)
6. Buat root password (ingat password ini!)

#### Opsi 2: Menggunakan XAMPP (Sudah Termasuk)
Jika sudah install XAMPP di step A, MySQL sudah tersedia!

### **E. Install Git (Windows/Mac/Linux)**

1. Download dari: https://git-scm.com/
2. Install dengan default settings
3. Verify di Command Prompt:
   ```bash
   git --version
   ```

---

## 🔧 STEP 2: Setup Database MySQL

### **1. Akses MySQL**

**Jika menggunakan XAMPP:**
```bash
# Buka Command Prompt
cd C:\xampp\mysql\bin
mysql -u root -p
# Tekan ENTER (jika password kosong)
```

**Jika MySQL Server standalone:**
```bash
mysql -u root -p
# Masukkan password yang Anda buat saat install
```

### **2. Buat Database Baru**

Di MySQL console, jalankan:
```sql
CREATE DATABASE anjab_abk_db;
SHOW DATABASES;
EXIT;
```

---

## 📂 STEP 3: Clone Repository & Setup Project

### **1. Pilih Lokasi Project**

```bash
# Windows (Misal di D:\Projects)
D:
cd Projects

# Mac/Linux (Misal di ~/projects)
cd ~/projects
```

### **2. Clone Repository**

```bash
git clone https://github.com/hanif-99/anjab-abk.git
cd anjab-abk
```

### **3. Install PHP Dependencies**

```bash
composer install
```
⏱️ *Tunggu 3-5 menit sampai selesai*

### **4. Install Frontend Dependencies**

```bash
npm install
```
⏱️ *Tunggu 2-3 menit*

### **5. Generate Application Key**

```bash
cp .env.example .env
php artisan key:generate
```

---

## ⚙️ STEP 4: Konfigurasi .env File

### **1. Buka file `.env` dengan text editor**

```bash
# Windows
notepad .env

# Mac/Linux
nano .env
```

### **2. Update konfigurasi database:**

Cari dan update bagian ini:

```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=anjab_abk_db
DB_USERNAME=root
DB_PASSWORD=

APP_NAME="e-ANJAB & e-ABK"
APP_ENV=local
APP_DEBUG=true
APP_URL=http://localhost:8000
```

**Penjelasan:**
- `DB_HOST` = 127.0.0.1 (localhost)
- `DB_PORT` = 3306 (default MySQL port)
- `DB_DATABASE` = anjab_abk_db (nama database yang dibuat)
- `DB_USERNAME` = root (default MySQL user)
- `DB_PASSWORD` = kosongkan jika XAMPP, atau isi password Anda

### **3. Simpan file .env**

---

## 🗄️ STEP 5: Setup Database (Migrations & Seeding)

### **1. Jalankan Migrations**

```bash
php artisan migrate
```
✅ Ini akan membuat tabel-tabel di database

### **2. Jalankan Seeder (Insert Data Default)**

```bash
php artisan db:seed
```
✅ Ini akan membuat user default untuk testing

---

## 🎨 STEP 6: Build Frontend Assets

```bash
npm run build
```
⏱️ *Tunggu sampai selesai*

Atau gunakan development mode (auto-rebuild):
```bash
npm run dev
```

---

## 🚀 STEP 7: Jalankan Aplikasi

### **1. Buka Command Prompt/Terminal di folder project**

### **2. Jalankan Laravel Development Server**

```bash
php artisan serve
```

✅ Output akan seperti ini:
```
   INFO  Server running on [http://127.0.0.1:8000].

Press Ctrl+C to stop the server
```

### **3. Buka Browser**

Akses: **http://localhost:8000**

---

## 🔓 STEP 8: Login Pertama Kali

Gunakan akun default untuk testing:

| Role | Email | Password |
|------|-------|----------|
| **Admin** | `admin@anjab.local` | `password` |
| **Ortala** | `ortala@anjab.local` | `password` |
| **Kementerian** | `kementerian@anjab.local` | `password` |
| **SKPD** | `skpd@anjab.local` | `password` |
| **Rumah Sakit** | `rumahsakit@anjab.local` | `password` |
| **Perguruan Tinggi** | `perguruantinggi@anjab.local` | `password` |
| **BLU/BUMN/BUMD** | `blu@anjab.local` | `password` |

---

## 📊 Struktur Folder Project

```
anjab-abk/
├── app/                    # Kode aplikasi utama
│   ├── Models/            # Database models
│   ├── Controllers/       # Logic aplikasi
│   └── Middleware/        # Middleware auth, etc
├── database/              # Migrations & seeders
│   ├── migrations/
│   └── seeders/
├── resources/             # Frontend files
│   ├── views/            # Template Blade
│   ├── css/
│   └── js/
├── routes/               # URL routes
├── public/               # Public assets (CSS, JS)
├── .env                  # Konfigurasi environment
├── composer.json         # PHP dependencies
├── package.json          # Node dependencies
└── README.md            # Project documentation
```

---

## 🐛 Troubleshooting

### **Error: "Class 'Illuminate\Foundation\Application' not found"**
```bash
composer install
php artisan key:generate
```

### **Error: "SQLSTATE[HY000]: General error: 1030"**
Pastikan MySQL running, atau restart XAMPP

### **Error: "npm command not found"**
Node.js belum terinstall, download dari https://nodejs.org/

### **Error: "php command not found"**
PHP belum di-add ke PATH, restart command prompt atau add manual ke PATH

### **Port 8000 sudah terpakai?**
Gunakan port lain:
```bash
php artisan serve --port=8001
```

### **Database error saat migrate?**
Periksa konfigurasi .env, pastikan:
- MySQL service running
- DB_HOST, DB_USERNAME, DB_PASSWORD benar
- Database sudah dibuat

---

## ✨ Perintah Berguna (Cheat Sheet)

```bash
# Start development server
php artisan serve

# Jalankan migrations
php artisan migrate

# Undo migrations
php artisan migrate:rollback

# Refresh database (hapus semua tabel & recreate)
php artisan migrate:fresh --seed

# Buat model baru
php artisan make:model NamaModel -mc

# Buat controller
php artisan make:controller NamaController

# Buat migration
php artisan make:migration create_nama_table

# Build frontend assets
npm run build

# Development mode (auto-rebuild)
npm run dev

# Clear cache
php artisan cache:clear

# View logs
tail -f storage/logs/laravel.log
```

---

## 🎉 Selesai!

Aplikasi Anda sudah siap digunakan! 

**Langkah selanjutnya:**
1. Login dengan salah satu akun default
2. Explore dashboard
3. Mulai input data master

Untuk pertanyaan & support: hubungi tim development 📧

---

*Last Updated: 2026-05-13*
*Version: 1.0*
