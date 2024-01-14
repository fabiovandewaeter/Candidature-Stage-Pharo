# Candidature-Stage-Pharo

## Exercice 1
### Consigne
Créer un programme qui permet d’encoder une matrice creuse https://www.geeksforgeeks.org/sparse-matrix-representation/ à partir d’une matrice sous sa forme traditionnelle. Vous utiliserez la méthode qui utilise des tableaux. Ce programme doit créer la représentation de la matrice creuse à partir de sa représentation traditionnelle sous forme de tableau de tableaux, et inversement, créer la représentation traditionnelle à partir de la représentation en matrice creuse.
### Classes et package
Les classes suivantes se trouvent dans le package Matrix :
1) Matrix:
   
Représente les matrices traditionnelles

2) SparseMatrix:
   
Hérite de Matrix et représente les matrices creuses en forme compacte

3) MatrixTest:
   
Contient les différents tests de la classe Matrix

4) SparseMatrixTest:
   
Contient les tests de la classe SparseMatrix
### Exemple
1) Matrix:

On peut créer une matrice 4x5 ainsi :
```
m := Matrix rows:4 columns:5.

m at:1 at:3 put:3.
m at:1 at:5 put:4.
m at:2 at:3 put:5.
m at:2 at:4 put:7.
m at:4 at:2 put:2.
m at:4 at:3 put:6.

m.
```
Cela donne la matrice traditionnelle suivante :
```
[0 0 3 0 4
0 0 5 7 0
0 0 0 0 0
0 2 6 0 0 ]
```

On peut aussi obtenir sa forme compacte en tant que SparseMatrix, grâce à `m asSparseMatrix.`, ce qui donne :
```
[1 1 2 2 4 4]
[3 5 3 4 2 3]
[3 4 5 7 2 6]
```

2) SparseMatrix:
   
On construit la matrice de la même manière après l'avoir créer grâce à `sm := SparseMatrix rows:4 columns:5.`
### Tests
MatrixTest a 5 tests verts et SparseMatrixTest en à 6.
