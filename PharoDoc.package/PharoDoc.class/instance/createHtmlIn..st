accessing
createHtmlIn: aDirectory
	| dir |
	dir := FileLocator home / (aDirectory,'/PharoDoc_',thePackage name).
	dir ensureCreateDirectory.
	classesArray do: [ :class |  (dir/(class className name,'.html')) asFileReference writeStreamDo: [ :stream | stream truncate. stream << (class asHTMLString) ] ]