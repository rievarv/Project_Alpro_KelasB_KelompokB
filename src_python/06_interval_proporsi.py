import math
# 1. BAGIAN INPUT
# memasukkan nilai proporsi, alpha, dan n
input_proporsi = float(input("Masukkan proporsi: "))
input_alpha = float(input("Masukkan alpha: "))
input_n = int(input("Masukkan n: "))

# 2. DEFINISI FUNGSI UTAMA
def hitung_interval(proporsi, alpha, n):
    # Validasi jika angka proporsi tidak sesuai syarat
    if proporsi < 0 or proporsi > 1:
        return "Error: Proporsi sampel > 1 / < 0"
    
    # nilai z-score berdasarkan input persentase alpha
    if alpha == 10:
        z = 1.645
    elif alpha == 5:
        z = 1.96
    else:
        return "Error: alpha harus 5 atau 10"

    # Rumus Margin of Error dan Batas Interval    
    margin = z * math.sqrt((proporsi * (1 - proporsi)) / n)
    batas_bawah = proporsi - margin
    batas_atas = proporsi + margin
    # Mengembalikan hasil hitungan ke luar fungsi
    return batas_bawah, batas_atas 

# 3. MEMANGGIL FUNGSI DAN OUTPUT
hasilnya = hitung_interval(input_proporsi, input_alpha, input_n)
print("Hasil Interval:", hasilnya)
