# Menentukan titik pusat masing-masing cluster
A <- c(2, 1, 3)
B <- c(1, -4, 6)
C <- c(-2, 3, -2)

# Fungsi untuk menghitung jarak Euclidean antara dua titik
HitungJarak <- function(P, Q) {
  sqrt(sum((P - Q)^2))
}

# Fungsi untuk menentukan cluster terdekat
TentukanCluster <- function(U) {
  
  # Menghitung jarak U ke masing-masing cluster
  dA <- HitungJarak(U, A)
  dB <- HitungJarak(U, B)
  dC <- HitungJarak(U, C)
  
  # Menentukan cluster berdasarkan jarak terkecil
  if (dA <= dB && dA <= dC) {
    cluster <- "A"
  } else if (dB <= dA && dB <= dC) {
    cluster <- "B"
  } else {
    cluster <- "C"
  }
  
  # Menampilkan jarak ke setiap cluster
  cat("Jarak ke Cluster A =", round(dA, 2), "\n")
  cat("Jarak ke Cluster B =", round(dB, 2), "\n")
  cat("Jarak ke Cluster C =", round(dC, 2), "\n")
  
  return(cluster)
}

# Memasukkan koordinat titik U
x1 <- as.numeric(readline("Masukkan x1: "))
x2 <- as.numeric(readline("Masukkan x2: "))
x3 <- as.numeric(readline("Masukkan x3: "))

# Membentuk titik U
U <- c(x1, x2, x3)

# Memanggil fungsi untuk menentukan cluster
hasil <- TentukanCluster(U)

# Menampilkan hasil klasifikasi
cat("Titik U termasuk Cluster", hasil)