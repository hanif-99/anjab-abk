<?php
namespace App\Models;

class User {
    public $id;
    public $name;
    public $email;
    public $password;
    public $role;
    public $status;
    public $created_at;
    public $updated_at;

    public function isAdmin() {
        return $this->role === 'admin';
    }

    public function isOrtala() {
        return $this->role === 'ortala';
    }
}
?>
