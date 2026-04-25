Tugas Praktikum MySQL – Blok Prosedural

 Identitas Mahasiswa
- Nama: Thizya Tri Frima  
- NIM: IK2411057  
- Kelas: Reguler  

 Deskripsi Tugas
Project ini berisi implementasi stored procedure MySQL menggunakan struktur kontrol IF untuk:
1. Menentukan predikat dan status kelulusan mahasiswa  
2. Menentukan status stok barang  
3. Menghitung diskon berdasarkan total belanja  

 Struktur File
project-mysql-procedure
│
├── README.md
└── program.sql

 Cara Menjalankan Program
1. Buka MySQL / phpMyAdmin / MySQL Workbench / VS Code  
2. Jalankan file program.sql  
3. Gunakan perintah:
   CALL nama_procedure(parameter);

 Penjelasan Program

 1. cek_predikat_mahasiswa
Menentukan predikat dan status kelulusan.

Contoh:
CALL cek_predikat_mahasiswa(85);

2. cek_status_stok
Menentukan status stok barang.

Contoh:
CALL cek_status_stok(3);

3. hitung_diskon
Menghitung diskon dan total bayar.

Contoh:
CALL hitung_diskon(750000);

 Kesimpulan
Program menggunakan IF untuk logika percabangan dan menghasilkan output berdasarkan input.
