#Menerima input langsung dengan prompt 
nip <- readline(prompt = "Masukkan NIP ASN: ")

#Memvalidasi input dengan memastikan panjang karakter minimal 8 dan hanya berisi digit angka
if (nchar(nip) < 8 || grepl("\\D", nip)) {
  cat("Error: Input NIP tidak valid. Pastikan memasukkan NIP dalam format angka minimal 8 digit.\n")
} else {
  #Mengekstrak komponen tanggal, bulan, dan tahun dari NIP
  tahun <- substr(nip, 1, 4)
  bulan_angka <- substr(nip, 5, 6)
  tanggal <- substr(nip, 7, 8)
  
  #Percabangan untuk menentukan nama bulan berdasarkan angka
  if (bulan_angka == "01") {
    bulan_nama <- "Januari"
  } else if (bulan_angka == "02") {
    bulan_nama <- "Februari"
  } else if (bulan_angka == "03") {
    bulan_nama <- "Maret"
  } else if (bulan_angka == "04") {
    bulan_nama <- "April"
  } else if (bulan_angka == "05") {
    bulan_nama <- "Mei"
  } else if (bulan_angka == "06") {
    bulan_nama <- "Juni"
  } else if (bulan_angka == "07") {
    bulan_nama <- "Juli"
  } else if (bulan_angka == "08") {
    bulan_nama <- "Agustus"
  } else if (bulan_angka == "09") {
    bulan_nama <- "September"
  } else if (bulan_angka == "10") {
    bulan_nama <- "Oktober"
  } else if (bulan_angka == "11") {
    bulan_nama <- "November"
  } else if (bulan_angka == "12") {
    bulan_nama <- "Desember"
  } else {
    bulan_nama <- NA
  }
  
  #Menampilkan hasil akhir cetakan ke layar komputer pengguna
  if (!is.na(bulan_nama)) {
    cat(paste0("Tanggal Lahir: ", tanggal, " ", bulan_nama, " ", tahun, "\n"))
  } else {
    cat("Error: Format bulan pada NIP tidak valid (harus 01-12).\n")
  }
}


