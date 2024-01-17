accessing
createHtmlInStream: aDirectory
	| dir aStream |
	dir := FileLocator home / (aDirectory,'/PharoDoc_',thePackage name).
	dir ensureCreateDirectory.
	classesArray do: [ :class |  aStream := (dir/(class theClass name,'.html')) asFileReference writeStream. aStream truncate. class printHtmlOn: aStream. aStream close ]