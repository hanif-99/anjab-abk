-- ================================================
-- Database Setup SQL - e-ANJAB & e-ABK
-- ================================================
-- Jalankan script ini di phpMyAdmin atau MySQL CLI
-- Password default: password (hashed dengan bcrypt)
-- ================================================

CREATE DATABASE IF NOT EXISTS anjab_abk_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE anjab_abk_db;

-- ================================
-- Tabel Users
-- ================================
CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    email_verified_at TIMESTAMP NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(50) NOT NULL COMMENT 'admin, ortala, kementerian, skpd, rumahsakit, perguruantinggi, blu',
    status VARCHAR(20) DEFAULT 'active' COMMENT 'active, inactive, blocked',
    remember_token VARCHAR(100) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX idx_email (email),
    INDEX idx_role (role),
    INDEX idx_status (status)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ================================
-- Tabel Analisis Jabatan (ANJAB)
-- ================================
CREATE TABLE IF NOT EXISTS anjab (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    identitas_jabatan LONGTEXT,
    iktisar_jabatan LONGTEXT,
    kualifikasi_jabatan LONGTEXT,
    tugas_pokok LONGTEXT,
    hasil_kerja LONGTEXT,
    bahan_kerja LONGTEXT,
    perangkat_kerja LONGTEXT,
    tanggung_jawab LONGTEXT,
    wewenang LONGTEXT,
    korelasi_jabatan LONGTEXT,
    kondisi_lingkungan_kerja LONGTEXT,
    resiko_bahaya LONGTEXT,
    syarat_jabatan LONGTEXT,
    prestasi_kerja LONGTEXT,
    kelas_jabatan VARCHAR(100),
    status VARCHAR(20) DEFAULT 'draft' COMMENT 'draft, submitted, approved, rejected',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    INDEX idx_status (status),
    INDEX idx_user_id (user_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ================================
-- Tabel Analisis Beban Kerja (ABK)
-- ================================
CREATE TABLE IF NOT EXISTS abk (
    id INT PRIMARY KEY AUTO_INCREMENT,
    anjab_id INT NOT NULL,
    user_id INT NOT NULL,
    beban_kerja_tetap LONGTEXT,
    beban_kerja_tidak_tetap LONGTEXT,
    jam_kerja_efektif VARCHAR(100),
    volume_kegiatan LONGTEXT,
    standar_waktu_kerja LONGTEXT,
    hasil_analisis LONGTEXT,
    rekomendasi LONGTEXT,
    status VARCHAR(20) DEFAULT 'draft' COMMENT 'draft, submitted, approved, rejected',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (anjab_id) REFERENCES anjab(id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    INDEX idx_status (status),
    INDEX idx_anjab_id (anjab_id),
    INDEX idx_user_id (user_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ================================
-- Tabel Peta Jabatan (Master Data)
-- ================================
CREATE TABLE IF NOT EXISTS peta_jabatan (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nama_jabatan VARCHAR(255) NOT NULL,
    deskripsi LONGTEXT,
    level VARCHAR(100),
    departemen VARCHAR(255),
    status VARCHAR(20) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX idx_status (status)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ================================
-- Insert User Default
-- ================================
-- Password: password (bcrypt hash)
-- $2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi

INSERT INTO users (name, email, password, role, status) VALUES
('Admin', 'admin@anjab.local', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'active'),
('Ortala User', 'ortala@anjab.local', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ortala', 'active'),
('Kementerian User', 'kementerian@anjab.local', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kementerian', 'active'),
('SKPD User', 'skpd@anjab.local', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'skpd', 'active'),
('Rumah Sakit User', 'rumahsakit@anjab.local', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rumahsakit', 'active'),
('Perguruan Tinggi User', 'perguruantinggi@anjab.local', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'perguruantinggi', 'active'),
('BLU User', 'blu@anjab.local', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'blu', 'active');
