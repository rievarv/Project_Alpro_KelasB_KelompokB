# Menentukan titik pusat masing-masing cluster
A <- c(2, 1, 3)
B <- c(1, -4, 6)
C <- c(-2, 3, -2)

# Memasukkan koordinat titik U
x1 <- as.numeric(readline("Masukkan x1: ")) 
x2 <- as.numeric(readline("Masukkan x2: "))


# Membentuk titik U dari koordinat yang diinput
U <- c(x1, x2, x3)

# Menghitung jarak Euclidean antara titik U dan pusat Cluster A
dA <- sqrt((x1 - 2)^2 + (x2 - 1)^2 + (x3 - 3)^2)

# Menghitung jarak Euclidean antara titik U dan pusat Cluster B
dB <- sqrt((x1 - 1)^2 + (x2 + 4)^2 + (x3 - 6)^2)

# Menghitung jarak Euclidean antara titik U dan pusat Cluster C
dC <- sqrt((x1 + 2)^2 + (x2 - 3)^2 + (x3 + 2)^2)

# Membandingkan ketiga jarak untuk menentukan cluster terdekat
if (dA <= dB && dA <= dC) {
  cluster <- "A"
} else if (dB <= dA && dB <= dC) {
  cluster <- "B"
} else {
  cluster <- "C"
}

# Menampilkan hasil perhitungan jarak
cat("\nJarak ke Cluster A =", round(dA, 2))
cat("\nJarak ke Cluster B =", round(dB, 2))
cat("\nJarak ke Cluster C =", round(dC, 2))

# Menampilkan hasil klasifikasi cluster
cat("\nTitik U termasuk Cluster", cluster)