# 1. DEKLARASI VARIABEL INPUT
proporsi<-0.7
alpha<-10
n<-15

# 2. DEFINISI FUNGSI
Interval <- function(proporsi, alpha, n) {
  # Validasi jika angka proporsi tidak masuk syarat
  if (proporsi < 0 || proporsi > 1) {
    return("Error: Proporsi sampel > 1 / < 0")
  }
  # Penentuan z-score berdasarkan persentase alpha
  if (alpha == 10) {
    z <- 1.645
  } else if (alpha == 5) {
    z <- 1.96
  } else {
    return("Error: alpha harus 5 atau 10")
  }

  # Rumus Margin of Error dan Batas Interval
  margin <- z * sqrt((proporsi * (1 - proporsi)) / n)
  batas_bawah <- proporsi - margin
  batas_atas <- proporsi + margin
  # Mengembalikan hasil hitungan ke luar fungsi
  return(list(bawah = batas_bawah, atas = batas_atas)) 
}
#3. PEMANGGILAN FUNGSI DAN OUTPUT LAYAR
hasilnya <- Interval(proporsi,alpha,n)
# Pengecekan apakah hasil berupa pesan error atau angka valid
if (is.character(hasilnya)) {
  cat(hasilnya, "\n")
  } else {
  cat("Batas Bawah :", hasilnya$bawah, "\n")
  cat("Batas Atas  :", hasilnya$atas, "\n")
  }
