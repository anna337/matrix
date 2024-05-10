#Nama: Andina Ayu Adni
#UPBJJ - UT Jakarta

#Jawaban Diskusi 3

#Pertanyaan 1. Buatlah pernyataan R untuk matriks A, B, dan C dengan menggunakan operator ":"

# Matriks A

A <- matrix(-4:1, nrow =2, ncol =3)
            dimnames = list(c("row1","row2"),
                            c("C.1", "C.2","C.3"))

print(A)

# Matriks B

B <- matrix(-2:5, nrow = 4, ncol = 2, byrow = TRUE,
            dimnames = list(c("row1", "row2","row3","row4"),
                           c("C.1", "C.2")))
print(B)

# Matriks C

C <- matrix(-2:-7, nrow = 3, ncol = 2, byrow = FALSE,
           dimnames = list(c("row1", "row2","row3"),
                           c("C.1", "C.2")))
print(C)

#Pertanyaan 2. Buatlah data runtun waktu berikut dalam R. Simpan data tersebut dalam objek dataku

assign(x = 'dataku', ts(2:10, start=c(2020,3), frequency=4))

print(dataku)


#Pertanyaan No.3 Tiga (3)contoh program R

#Contoh 1. Menambahkan/mengurangi kolom matriks dengan fungsi cbind/rbind
x <- matrix(1:9, nrow = 3, ncol = 3, byrow = TRUE)

# add a column
cbind(x, c(10,11,12))

# add a row
rbind(x,c(13,14,15))

# remove last row
x <- x[1:2,]; x 


#Contoh 2 Membuat data frame dari vektor

Nama<-c("Arum","Budi","Chandra","Desi","Caca","Ratih","Deden","Agus")
Usia<-rep(c(25,26,27,28), each=2, times=1)
Daerah<-c("Jakarta","Bekasi","Depok","Bandung","Tangerang", "Bogor", "Surabaya","Solo")
Skor<-c(12, 10, 15, 16, 14, 25, 21, 29) 

      data1 <- data.frame(Nama, Usia, Daerah, Skor)
          data2<-data1[order(data1$Nama),]
print(data2)
          

#Contoh 3 Membuat runtun waktu dengan matriks
          
ts <- matrix(0:15, nrow =4, ncol =4, byrow = TRUE,
             dimnames = list(c("1959","1960","1961","1962"),
                             c("Qtr.1", "Qtr2","Qtr3","Qtr4")))
       
        ts[ts<1] <- " " 
        
        #modify single element 
        ts[4,4] <- " "
        
print(ts)

    
          

    
