# Nama: Andina Ayu Adni
# UPBJJ: UT-JAKARTA

# Diskusi IV

# Pertanyaan 1. Tulisakan pernyataan R untuk membuat matriks M:

# Creating a matrix M
M <- matrix(c(7,9,1,3), nrow = 4, ncol = 4, byrow = TRUE, 
            dimnames = list(c("row1","row2","row3","row4"), 
                            c("C.1","C.2","C.3","C.4")))
M[lower.tri(M)] <- 0

# Replacement vector
b = c(6,5,7,4,5,2)

# Replacing the diagonal elements with values from vector 
M[upper.tri(M)] <- b

print(M)

# Hitunglah:

  #a. Perkalian elemen demi elemen dari matriks M
      element_by_element_multiplication <- print(M*M)

  #b. Perkalian matriks M dengan matriks M (secara aljabar)
      algerbraic_multiplication <- print(M%*%M)

  #c. invers dari matriks M
      matrix_invers <- print(solve(M))
    
  #d. transpos dari matriks M
      matrix_M_transpose <- print(t(M))
    
# Pertanyaan 2. Gunakan matriks M pada pertanyaan 1. diatas, dan dikethui:

a <- matrix(c(1,4,5,6), nrow = 1, ncol = 4, byrow = TRUE, 
                dimnames = list(c("row1"), 
                                c("C.1","C.2","C.3","C.4")))
print (a)

B <- matrix(c(1:4), nrow = 2, ncol = 4, byrow = TRUE, 
            dimnames = list(c("row1","row2"), 
                            c("C.1","C.2","C.3","C.4")))
print(B)


# Tentukan pernyataan R untuk pengolahan matriks M berikut, dan tuliskan hasilnya.
  #a. Mengambil anak matriks M dengan hasil M1 = [9,7;0,1]
      M1 = print(M[2:3, 2:3])

  #b. Mengambil anak matriks M dengan hasil M2 = [7,4;0,3]
      elemen1<-M[1, 1]
      elemen2<-M[1, 4]
      elemen3<-M[4, 1]
      elemen4<-M[4, 4]
      
      M2 = print(matrix(c(elemen1,elemen2,elemen3,elemen4),nrow=2,ncol=2, byrow=TRUE,
                        dimnames = list(c("row1","row2"), 
                                        c("C.1","C.2"))))
                                                                                                     
      
  #c. Menambahkan a ke baris ke -5 dari M, hasilnya dalah matriks M3
      M3 <- print(rbind(M,a))
  
  #d. Menambahkan transpos B ke kolom 1 dan 2 dari M, hasilnya adalah matriks M4
      transpose_matrixB <- t(B)
                     M4 <- cbind(transpose_matrixB,M)
                    
                     dimnames(M4) = list(c("row1","row2","row3","row4"), 
                                         c("C.1","C.2","C.3","C.4","C.5","C.6"))
          print(M4)
                       
                     

# Pertanyaan 3. Dua(2)contoh program R.
# Contoh 1 membuat matriks segitiga atas diagonal 4x4
x <-c(3,9,9,1)
        
 diag_matX <- matrix(diag(x), nrow=4, ncol=4, byrow=TRUE,
                     dimnames =list(c("row1","row2","row3","row4"),
                                    c("C.1","C.2","C.3","C.4")))
print(diag_matX)

# menukar nilai vektor elemen segitiga atas matriks X
diag_matX[1,2] <- 7
diag_matX[1,3] <- 4
diag_matX[1,4] <- 8
diag_matX[2,3] <- 6
diag_matX[2,4] <- 2
diag_matX[3,4] <- 5

print(diag_matX)

#Contoh 2 membuat matriks segitiga bawah dengan memindahkan nilai vektor segitiga atas matriks X diatas ke bawah

diag_matX[lower.tri(diag_matX)]<- t(diag_matX)[lower.tri(diag_matX)]
 
      diag_matX[upper.tri(diag_matX)] <- 0
 
          lowertri_matX <- print(diag_matX)
 
 