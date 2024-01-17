instance creation
createHtmlFrom: aPackage in: aDirectory
	"Create a Stream from the directory in the user's home directory and creates the documentation HTML files"
	^(self new: aPackage)
	createHtmlIn: aDirectory;
	yourself