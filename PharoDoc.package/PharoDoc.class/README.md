I am a documentation creation similar to Javadoc.

I take the name of a Pharo package and a destination directory, and I create an instance of myself allowing me to make its documentation and put it in HTML form.

Public API and Key Messages
- #createHtmlFrom: aPackage in: aDirectory		create a folder in ~/aDirectory with documentation of all classes in aPackage
- #new: aPackage		create an instance of myself without creating the html files
- #creaHtmlIn: aDirectory		create a folder in ~/aDirectory with documentation of all classes in aPackage

Examples
```
	"Create the HTML files for the documentation of the PharoDoc package in the directory ~/Desktop :"
	doc := PharoDoc createHtmlFrom: #PharoDoc in: 'Desktop'.
	
	"Create an instance of PharoDoc that contains the informations about the Matrix package"
	docMatrix := PharoDoc new: #Matrix.
	
	"Create the HTML files for the documentation of the Matrix package in the directory ~/Desktop :"
	docMatrix createHtmlIn: 'Desktop'.
```

Internal Representation and Key Implementation Points.

Instance Variables 
- thePackage:		<RPackage> The name of the package
- classesArray:		<Array> An Array that contains all PharoDoClass created for the package documentation
