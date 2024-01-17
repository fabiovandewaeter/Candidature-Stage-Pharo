I am a documentation creation similar to Javadoc.

I take the name of a Pharo package and a destination directory, and I create an instance of myself allowing me to make its documentation and put it in HTML form.

Public API and Key Messages
- #createHtmlFrom: aPackage in: aDirectory create a folder in ~/aDirectory with documentation of all classes in aPackage
- #new: aPackage create an instance of myself without creating the html files
-

Examples



Internal Representation and Key Implementation Points.

Instance Variables
