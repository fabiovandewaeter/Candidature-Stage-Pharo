accessing
printOn: aStream
	aStream
	nextPutAll: 'instVariable : ',varName;
	cr;
	nextPutAll: 'selectors that reference it : ';
	cr.
	(selectorsThatReference do: [:each | each printOn: aStream. aStream space. aStream cr])