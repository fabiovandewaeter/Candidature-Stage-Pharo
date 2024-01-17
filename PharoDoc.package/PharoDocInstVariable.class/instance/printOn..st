accessing
printOn: aStream
	aStream
	nextPutAll: 'instVariable : ',varName;
	cr;
	nextPutAll: 'methods that reference it : ';
	cr.
	(methodsThatReference do: [:each | each printOn: aStream. aStream space. aStream cr])