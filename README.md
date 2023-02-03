L'un des problèmes les plus courants en chimie est de déterminer la proportion de chaque composant dans une substance chimique. Ce problème peut être représenté par un système d'équations linéaires, où chaque équation représente la quantité de chaque composant présent dans la substance. Par exemple, voici un système d'équations linéaires qui peut être utilisé pour représenter le mélange de trois composants chimiques :

x1 + x2 + x3 = 100
0,1x1 + 0,2x2 + 0,3x3 = 20
0,2x1 + 0,1x2 + 0,15x3 = 10

Ici, x1, x2 et x3 représentent la proportion (en pourcentage) de chaque composant dans le mélange. La première équation indique que la somme des proportions doit égaler 100, car le mélange est constitué à 100% de composants. Les deuxième et troisième équations représentent la quantité totale (en unités) de deux composants chimiques spécifiques présents dans le mélange. En résolvant ce système d'équations linéaires, nous pouvons déterminer la proportion de chaque composant dans le mélange.

Pour résoudre ce système d'équations linéaires en utilisant la méthode de Jacobi, nous devons premièrement décomposer la matrice de coefficients en une matrice diagonale (D), une matrice supérieure (U) et une matrice inférieure (L). La matrice diagonale (D) est une matrice diagonale dont les éléments diagonaux sont les coefficients des variables sur le membre de gauche de chaque équation. La matrice supérieure (U) contient les coefficients des variables sur le membre de gauche de chaque équation, sauf les coefficients de la variable sur la diagonale. La matrice inférieure (L) contient les coefficients des variables sur le membre de gauche de chaque équation, sauf les coefficients de la variable sur la diagonale.

En utilisant ces matrices, nous pouvons itérer à travers le système d'équations en utilisant la formule suivante pour déterminer la valeur de chaque variable à chaque itération :

scss

x = (D^-1)(b - (L + U)x)

Où b représente le vecteur des constantes du système d'équations et x représente les estimations actuelles des variables. La boucle d'itération continue jusqu'à ce qu'une solution convergente soit trouvée ou jusqu'à ce qu'un nombre maximum d'itérations soit atteint.
