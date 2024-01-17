# Candidature-Stage-Pharo

Fabio Vandewaeter, L3 informatique option renforcé recherche

## Version utilisé
J'ai utilisé l'image Pharo 11.0 - 64bit(stable) en vérifiant le bon fonctionnement du code sur les VM Windows x86_64, Linux x86_64 et MacOs arm64
## Exercice 1
### Consigne
Créer un programme qui permet d’encoder une matrice creuse https://www.geeksforgeeks.org/sparse-matrix-representation/ à partir d’une matrice sous sa forme traditionnelle. Vous utiliserez la méthode qui utilise des tableaux. Ce programme doit créer la représentation de la matrice creuse à partir de sa représentation traditionnelle sous forme de tableau de tableaux, et inversement, créer la représentation traditionnelle à partir de la représentation en matrice creuse.
### Classes et package
Les classes suivantes se trouvent dans le package Matrix :
1) **Matrix:** Représente les matrices traditionnelles

2) **SparseMatrix:** Hérite de Matrix et représente les matrices creuses en forme compacte

3) **MatrixTest:** Contient les différents tests de la classe Matrix

4) **SparseMatrixTest:** Contient les tests de la classe SparseMatrix
### Exemple
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

On peut aussi obtenir sa forme compacte en tant que SparseMatrix, grâce à `m asSparseMatrix.`, ce qui donne :
```
[1 1 2 2 4 4]
[3 5 3 4 2 3]
[3 4 5 7 2 6]
```

2) **SparseMatrix:**
   
On construit la matrice de la même manière, après l'avoir créée grâce à `sm := SparseMatrix rows:4 columns:5.`
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

### Exemple
La création de la documentation se fait grâce à la classe `PharoDoc` de deux manières différentes :
1) Créer la documentation sous la forme de fichiers HTML à partir du constructeur :
On utilise pour cela le constructeur `createHtmlFrom: aPackage in: aDirectory`, qui prend le nom d'un package et le nom d'un dossier dans le home de l'ordinateur de l'utilisateur pour créer un dossier contenant la documentation du package sous la forme de pages HTML
```
"Crée un dossier contenant les fichiers HTML du package PharoDoc dans le dossier ~/Desktop :"
doc := PharoDoc createHtmlFrom: #PharoDoc in: 'Desktop'.
```

3) Créer une instance de la classe :
```
"Crée une instance de PharoDoc avec la documentation du package Matrix et affiche un résumé dans le Playground"
docMatrix := PharoDoc new: #Matrix.
docMatrix.

"Crée un dossier contenant les fichiers HTML du package Matrix dans le dossier ~/Desktop :"
docMatrix createHtmlIn: 'Desktop'.
```

### Tests
Comme les méthodes de ces classes consiste avant tout à appeler des méthodes fournies par défaut avec l'image Pharo, je n'ai pas recréé de tests directement dans le programme
