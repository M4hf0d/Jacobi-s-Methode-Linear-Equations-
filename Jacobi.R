

library(matlib)
# Définition de la matrice A et du vecteur b
A <- matrix(c(2,1,1,0.1,0.5,0.3,0.2,0.1,2), nrow=3, ncol=3, byrow=TRUE)
b <- matrix(c(100, 20, 10),nrow = 3, ncol = 1)

# Définition de la matrice D, U et L (L= F fl cour)
D <- diag(diag(A))
E<- -A 
L <- -A

E[upper.tri(A, diag = TRUE)] <- 0
L[lower.tri(A, diag = TRUE)] <-0 



print("A = ")
print(A)
cat("\n")
cat("b = ", b)
cat("\n")



# Définition de la matrice d'itération
Bj <- inv(D) %*% (E+L)
Cj <- inv(D) %*% b

x0 <- matrix(c(0, 0, 0),nrow = 3, ncol = 1)
x1 <- matrix(c(0, 0, 0),nrow = 3, ncol = 1)
tol <- 1e-8
maxIter <- 1000000
iter <- 0



while (iter < maxIter) 
  {
    x1 <- Bj %*% x0 + Cj
    iter <- iter + 1
  
    if(max(abs(x1 - x0))<tol) {
      print("max|x1 - x0 |< epsilon")

      break}
    x0 <- x1
  
  }

# Résultat final
cat("la sollution x= ", x1) 
cat("\n")

cat("Le nombre d'itération: ",iter)
cat("\n")


cat("epsilon =  ",tol)
cat("\n")
