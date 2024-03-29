# Candidature-Stage-Pharo

Fabio Vandewaeter, L3 informatique option renforcé recherche

## Version utilisée
J'ai utilisé l'image Pharo 11.0 - 64bit(stable) en vérifiant le bon fonctionnement du code sur les VM Windows x86_64, Linux x86_64 et MacOs arm64, et j'ai fait les commits sur ce dépôt Github grâce à l'outil Iceberg de Pharo

Pour cloner ce dépôt à partir d'une nouvelle image Pharo je commence par le cloner localement grâce à la commande `git` du terminal, puis je l'importe avec Iceberg et je charge les 2 packages

## Exercice 1
### Consigne
Créer un programme qui permet d’encoder une matrice creuse https://www.geeksforgeeks.org/sparse-matrix-representation/ à partir d’une matrice sous sa forme traditionnelle. Vous utiliserez la méthode qui utilise des tableaux. Ce programme doit créer la représentation de la matrice creuse à partir de sa représentation traditionnelle sous forme de tableau de tableaux, et inversement, créer la représentation traditionnelle à partir de la représentation en matrice creuse.
### Classes et package
Les classes suivantes se trouvent dans le package Matrix :
1) **Matrix:** Représente les matrices traditionnelles

2) **SparseMatrix:** Hérite de Matrix et représente les matrices creuses en forme compacte

3) **MatrixTest:** Contient les différents tests de la classe Matrix

4) **SparseMatrixTest:** Contient les tests de la classe SparseMatrix
### Exemples
1) **Matrix:**

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

On peut obtenir sa forme compacte en tant que SparseMatrix ainsi :

```
m asSparseMatrix.
```

ce qui donne :
```
[1 1 2 2 4 4]
[3 5 3 4 2 3]
[3 4 5 7 2 6]
```

2) **SparseMatrix:**
   
On construit la matrice de la même manière après avoir utilisé le constructeur de SparseMatrix :

```
sm := SparseMatrix rows:4 columns:5.

sm at:1 at:3 put:3.
sm at:1 at:5 put:4.
sm at:2 at:3 put:5.
sm at:2 at:4 put:7.
sm at:4 at:2 put:2.
sm at:4 at:3 put:6.

sm.
```

ce qui donne :
```
[1 1 2 2 4 4]
[3 5 3 4 2 3]
[3 4 5 7 2 6]
```

On peut obtenir sa forme traditionnelle en tant que Matrix ainsi :

```
sm asMatrix.
```
Cela donne la matrice traditionnelle suivante :
```
[0 0 3 0 4
0 0 5 7 0
0 0 0 0 0
0 2 6 0 0 ]
```

### Tests
MatrixTest a 5 tests verts et SparseMatrixTest en à 6.

## Exercice 2
### Consigne
Créer un programme qui permet à partir d’un package pharo et générer l’équivalent de la Java doc pour chacune des classes qu’il contient. Pour chaque classe, on voudra connaître sa super classe, ses sous-classes, ses variables d’instances et pour chaque variable d’instance les méthodes de la classe qui la référence, ses méthodes et pour chaque méthode ses senders (c’est-à-dire les méthodes qui l’appellent).
### Classes et package
Les classes suivantes se trouvent dans le package PharoDoc :
1) **PharoDoc:** Représente la documentation d'un package et permet de créer les fichiers HTML décrivant ses classes
2) **PharoDocClass:** Représente la documentation d'une classe du package
3) **PharoDocInstVariable:** Représente la documentation d'une variable d'instance d'une classe du package
4) **PharoDocMethod:** Représente la documentation d'une méthode d'une classe du package
5) **PharoDocTest:** Contient les tests de la classe PharoDoc

### Exemples
La création de la documentation avec la classe `PharoDoc` peut se faire de deux manières différentes :

1) **En créant directement la documentation sous la forme de fichiers HTML à partir du constructeur de la classe :**
   
On utilise pour cela le constructeur `createHtmlFrom: aPackage in: aDirectory`, qui prend le nom d'un package et le nom d'un dossier dans le home de l'ordinateur de l'utilisateur pour créer un dossier contenant la documentation du package sous la forme de pages HTML
```
"Crée un dossier PharoDoc_PharoDoc contenant les fichiers HTML du package PharoDoc dans le dossier ~/Desktop :"
doc := PharoDoc createHtmlFrom: #PharoDoc in: 'Desktop'.
```
![pharodoc_screen1](https://github.com/fabiovandewaeter/Candidature-Stage-Pharo/assets/134401954/837056ce-59a2-4f14-965d-37568dc23f8d)


2) **En créant une instance de la classe :**
```
"Crée une instance de PharoDoc avec la documentation du package Matrix et affiche un résumé dans le Playground"
docMatrix := PharoDoc new: #Matrix.
docMatrix.

"Crée un dossier PharoDoc_Matrix contenant les fichiers HTML du package Matrix dans le dossier ~/Desktop :"
docMatrix createHtmlIn: 'Desktop'.
```

![pharodoc_screen2](https://github.com/fabiovandewaeter/Candidature-Stage-Pharo/assets/134401954/dda08565-6d21-4acb-988d-5a6117926f76)


### Tests
Comme les méthodes de ces classes consistent simplement à appeler des méthodes fournies par défaut avec l'image Pharo, pour obtenir des informations, je n'ai pas recréé de tests pour ces méthodes
