
-- ===============================
-- 1. PROCEDURE CEK PREDIKAT MAHASISWA
-- ===============================
DELIMITER //

CREATE PROCEDURE cek_predikat_mahasiswa(IN p_nilai INT)
BEGIN
    DECLARE v_predikat VARCHAR(30);
    DECLARE v_status VARCHAR(20);

    IF p_nilai >= 90 THEN
        SET v_predikat = 'Sangat Memuaskan';
    ELSEIF p_nilai >= 80 THEN
        SET v_predikat = 'Memuaskan';
    ELSEIF p_nilai >= 70 THEN
        SET v_predikat = 'Baik';
    ELSEIF p_nilai >= 60 THEN
        SET v_predikat = 'Cukup';
    ELSE
        SET v_predikat = 'Kurang';
    END IF;

    IF p_nilai >= 70 THEN
        SET v_status = 'Lulus';
    ELSE
        SET v_status = 'Tidak Lulus';
    END IF;

    SELECT 
        p_nilai AS nilai,
        v_predikat AS predikat,
        v_status AS status;
END //

DELIMITER ;


-- ===============================
-- 2. PROCEDURE CEK STATUS STOK
-- ===============================
DELIMITER //

CREATE PROCEDURE cek_status_stok(IN p_stok INT)
BEGIN
    DECLARE v_status VARCHAR(30);

    IF p_stok = 0 THEN
        SET v_status = 'Habis';
    ELSEIF p_stok BETWEEN 1 AND 5 THEN
        SET v_status = 'Hampir Habis';
    ELSEIF p_stok BETWEEN 6 AND 20 THEN
        SET v_status = 'Tersedia';
    ELSE
        SET v_status = 'Stok Aman';
    END IF;

    SELECT CONCAT('Status: ', v_status) AS hasil;
END //

DELIMITER ;


-- ===============================
-- 3. PROCEDURE HITUNG DISKON
-- ===============================
DELIMITER //

CREATE PROCEDURE hitung_diskon(IN total_belanja DECIMAL(12,2))
BEGIN
    DECLARE v_diskon INT;
    DECLARE v_jumlah_diskon DECIMAL(12,2);
    DECLARE v_total_bayar DECIMAL(12,2);

    IF total_belanja >= 1000000 THEN
        SET v_diskon = 15;
    ELSEIF total_belanja >= 500000 THEN
        SET v_diskon = 10;
    ELSEIF total_belanja >= 250000 THEN
        SET v_diskon = 5;
    ELSE
        SET v_diskon = 0;
    END IF;

    SET v_jumlah_diskon = total_belanja * v_diskon / 100;
    SET v_total_bayar = total_belanja - v_jumlah_diskon;

    SELECT 
        total_belanja,
        v_diskon AS diskon_persen,
        v_jumlah_diskon AS jumlah_diskon,
        v_total_bayar AS total_bayar;
END //

DELIMITER ;