instance creation
createHtmlFrom: aPackage in: aDirectory
	^(self new: aPackage)
	createHtmlIn: aDirectory;
	yourself