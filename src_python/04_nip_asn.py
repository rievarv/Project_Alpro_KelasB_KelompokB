#Membaca input NIP dari pengguna
nip = input("Masukkan NIP ASN: ").strip()

#Memvalidasi input: memastikan panjang NIP mencukupi dan hanya berisi angka
if len(nip) < 8 or not nip.isdigit():
    print("Error: Input NIP tidak valid. Pastikan memasukkan NIP dalam format angka minimal 8 digit.")
else:
    #Mengekstrak komponen tanggal, bulan, dan tahun dari 8 digit pertama NIP
    tahun = nip[0:4]
    bulan_angka = nip[4:6]
    tanggal = nip[6:8]

    #Percabangan untuk mengonversi angka bulan menjadi nama bulan Bahasa Indonesia
    if bulan_angka == "01":
        bulan_nama = "Januari"
    elif bulan_angka == "02":
        bulan_nama = "Februari"
    elif bulan_angka == "03":
        bulan_nama = "Maret"
    elif bulan_angka == "04":
        bulan_nama = "April"
    elif bulan_angka == "05":
        bulan_nama = "Mei"
    elif bulan_angka == "06":
        bulan_nama = "Juni"
    elif bulan_angka == "07":
        bulan_nama = "Juli"
    elif bulan_angka == "08":
        bulan_nama = "Agustus"
    elif bulan_angka == "09":
        bulan_nama = "September"
    elif bulan_angka == "10":
        bulan_nama = "Oktober"
    elif bulan_angka == "11":
        bulan_nama = "November"
    elif bulan_angka == "12":
        bulan_nama = "Desember"
    else:
        bulan_nama = None

    #Menampilkan output akhir hasil pengolahan data atau pesan error apabila input tidak valid
    if bulan_nama is not None:
        print(f"Tanggal Lahir: {tanggal} {bulan_nama} {tahun}")
    else:
        print("Error: Format bulan pada NIP tidak valid (harus 01-12).")
