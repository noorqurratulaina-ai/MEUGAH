# MEUGAH — Laravel (overlay)

Website Sistem Informasi Wisata Aceh (Explore Wisata, Tour & Travel, Souvenir Shop) berdasarkan SRS v2.1 dan rancangan ERD.
Ini adalah **overlay**: berisi file aplikasi saja, ditempel ke instalasi Laravel 11/12 yang baru.

## Instalasi (XAMPP/Windows, PHP 8.2+, Composer)
```bash
composer create-project laravel/laravel meugah
# salin isi folder overlay ini ke dalam folder meugah (timpa file yang sama, mis. routes/web.php & app/Models/User.php)
cd meugah
```
Edit `.env`:
```
DB_CONNECTION=mysql
DB_DATABASE=meugah
DB_USERNAME=root
DB_PASSWORD=
MIDTRANS_SERVER_KEY=        # opsional, untuk pembayaran otomatis (sandbox)
MIDTRANS_IS_PRODUCTION=false
```
Buat database `meugah` di phpMyAdmin, lalu:
```bash
php artisan migrate --seed
php artisan storage:link
php artisan serve
```
Akun seed: `admin@meugah.test` / `password` (admin), `wisatawan@meugah.test` / `password`.
Untuk upload video/gambar besar, naikkan `upload_max_filesize` & `post_max_size` di php.ini (mis. 64M).

## Payment gateway (Midtrans)
Atur Notification URL di dashboard Midtrans ke `https://domain-anda/midtrans/notifikasi`. (Saat lokal pakai ngrok.)

## Catatan
- Tailwind & Leaflet (peta OpenStreetMap) dimuat via CDN agar tanpa build npm. Untuk produksi, pindahkan Tailwind ke Vite.
- CRUD admin generik dikonfigurasi di `config/crud.php`.
