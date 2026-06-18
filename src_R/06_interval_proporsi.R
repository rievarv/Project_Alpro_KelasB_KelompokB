proporsi<-0.7
alpha<-10
n<-15

Interval <- function(proporsi, alpha, n) {
  if (proporsi < 0 || proporsi > 1) {
    return("Error: Proporsi sampel > 1 / < 0")
  }
  
  if (alpha == 10) {
    z <- 1.645
  } else if (alpha == 5) {
    z <- 1.96
  } else {
    return("Error: alpha harus 5 atau 10")
  }
  
  margin <- z * sqrt((proporsi * (1 - proporsi)) / n)
  batas_bawah <- proporsi - margin
  batas_atas <- proporsi + margin
  
  return(list(bawah = batas_bawah, atas = batas_atas)) 
}

hasilnya <- Interval(proporsi,alpha,n)
if (is.character(hasilnya)) {
  cat(hasilnya, "\n")
  } else {
  cat("Batas Bawah :", hasilnya$bawah, "\n")
  cat("Batas Atas  :", hasilnya$atas, "\n")
  }
}
  
