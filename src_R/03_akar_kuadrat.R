a <- 2
b <- 4
c <-5

D <- b^2 - 4*a*c

if (D < 0) {
  cat("Akar imajiner\n")
} else {
  x1 <- (-b + sqrt(D)) / (2*a)
  x2 <- (-b - sqrt(D)) / (2*a)
  
  cat(sprintf("Akar 1 = %.3f\n", x1))
  cat(sprintf("Akar 2 = %.3f\n", x2))
}
