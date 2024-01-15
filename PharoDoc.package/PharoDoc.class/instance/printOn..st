accessing
printOn: aStream
	(classes do: [:class | class printOn: aStream. aStream cr])