import math  # Mengimpor library math untuk menggunakan fungsi sqrt()

a = float(input("Masukkan nilai a: "))  # Membaca nilai koefisien a
b = float(input("Masukkan nilai b: "))  # Membaca nilai koefisien b
c = float(input("Masukkan nilai c: "))  # Membaca nilai koefisien c

D = b**2 - 4*a*c  # Menghitung nilai diskriminan

if D < 0:  # Memeriksa apakah diskriminan bernilai negatif
    print("Persamaan hanya memiliki akar imajiner")  # Menampilkan pesan akar imajiner
else:  # Jika diskriminan tidak negatif

    x1 = (-b + math.sqrt(D)) / (2*a)  # Menghitung akar pertama

    x2 = (-b - math.sqrt(D)) / (2*a)  # Menghitung akar kedua

    print(f"Akar 1 = {x1:.3f}")  # Menampilkan akar pertama dengan 3 desimal

    print(f"Akar 2 = {x2:.3f}")  # Menampilkan akar kedua dengan 3 desimal
