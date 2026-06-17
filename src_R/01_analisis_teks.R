teks <- "Media sosial atau disebut juga dengan jejaring sosial, seperti Facebook, Twitter, Instagram, dan masih banyak lagi ternyata tidak hanya digunakan sebagai tempat berkumpul atau berbagi di dunia maya. Namun, media sosial kini juga bisa dimanfaatkan sebagai media untuk mengembangkan sebuah bisnis. Saat ini telah banyak para pengusaha yang beralih ke media sosial dalam memasarkan produk mereka baik barang ataupun jasa. Beralihnya para pelaku bisnis ke media ini dikarenakan jejaring sosial memiliki manfaat yang sangat banyak bagi usaha bisnis. Berikut ini adalah alasan mengapa jejaring sosial bisa menjadi alat promosi yang paling efektif."
kumpulan_karakter <- strsplit(teks, "") [[1]]

jumlah_spasi <- 0
jumlah_kalimat <- 0

for (karakter in kumpulan_karakter){
  
  if (karakter == " "){
    jumlah_spasi <- jumlah_spasi + 1
  }
  
  if (karakter == ".") {
    jumlah_kalimat <- jumlah_kalimat + 1
  }
}

jumlah_kata <- jumlah_spasi + 1

print(paste("Jumlah kalimat =", jumlah_kalimat))
print(paste("Jumlah kata =", jumlah_kata))
