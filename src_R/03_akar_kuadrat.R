a <- 2                    # Menyimpan nilai 2 sebagai koefisien x^2
b <- 4                    # Menyimpan nilai 4 sebagai koefisien x
c <- 5                    # Menyimpan nilai 5 sebagai konstanta

D <- b^2 - 4*a*c          # Menghitung nilai diskriminan

if (D < 0) {              # Memeriksa apakah D kurang dari 0
  cat("Akar imajiner\n")  # Menampilkan pesan akar imajiner
} else {                  # Jika D tidak kurang dari 0

  x1 <- (-b + sqrt(D)) / (2*a)  # Menghitung akar pertama

  x2 <- (-b - sqrt(D)) / (2*a)  # Menghitung akar kedua

  cat(sprintf("Akar 1 = %.3f\n", x1))  # Menampilkan akar pertama

  cat(sprintf("Akar 2 = %.3f\n", x2))  # Menampilkan akar kedua
}
