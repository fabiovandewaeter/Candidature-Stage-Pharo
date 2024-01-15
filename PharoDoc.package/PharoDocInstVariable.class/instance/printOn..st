accessing
printOn: aStream
	aStream
	nextPutAll: 'instVariable : ',name;
	cr;
	nextPutAll: 'selectors that reference it : ';
	cr.
	(selectorsThatReference do: [:each | each printOn: aStream. aStream space. aStream cr])