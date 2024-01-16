instance creation
createHtmlFrom: aPackage in: aDirectory
	| dir newInstance |
	newInstance := self new: aPackage.
	dir := FileLocator home / (aDirectory,'/PharoDoc_',newInstance thePackage name).
	dir ensureCreateDirectory.
	newInstance classesArray do: [ :class |  (dir/(class theClass name,'.html')) asFileReference writeStreamDo: [ :stream | stream truncate. stream << (class asHTMLString) ] ].
	^newInstance