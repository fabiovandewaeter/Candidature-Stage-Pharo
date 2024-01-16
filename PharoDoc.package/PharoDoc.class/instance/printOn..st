accessing
printOn: aStream
	(classesArray do: [:class | class printOn: aStream. aStream cr])