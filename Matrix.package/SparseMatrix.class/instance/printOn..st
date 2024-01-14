accessing
printOn: aStream
	aStream nextPutAll: '['. rowsArray do: [ :each | aStream print: each ] separatedBy: [ aStream space ]. aStream nextPutAll: ']'. aStream cr.
	aStream nextPutAll: '['. columnsArray do: [ :each | aStream print: each ] separatedBy: [ aStream space ]. aStream nextPutAll: ']'. aStream cr.
	aStream nextPutAll: '['. values do: [ :each | aStream print: each ] separatedBy: [ aStream space ]. aStream nextPutAll: ']'. aStream cr