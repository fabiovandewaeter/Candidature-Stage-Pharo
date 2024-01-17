instance creation
createHtmlFrom: aPackage in: aDirectory
	^(self new: aPackage)
	createHtmlStreamIn: aDirectory;
	yourself