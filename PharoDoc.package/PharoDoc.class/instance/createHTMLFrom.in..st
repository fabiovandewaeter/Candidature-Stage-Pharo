accessing
createHTMLFrom: aPackage in: aDirectory
	| dir |
	dir := FileLocator home / (aDirectory,'PharoDoc_',aPackage).
	dir ensureCreateDirectory.
	classesArray do: [ :class |  ((dir/(class className)) asFileReference) writeStreamDo: [ :stream | stream truncate. stream << (class asHTMLString) ] ]