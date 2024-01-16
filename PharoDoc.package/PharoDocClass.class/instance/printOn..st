accessing
printOn: aStream
	aStream
	nextPutAll: 'Class : ',theClass name;
	cr;
	nextPutAll: 'SuperClass : ',superClass name;
	cr;
	nextPutAll: 'SubClasses : ';
	cr.
	(subClasses do: [:each | each printOn: aStream. aStream space. aStream cr]).
	(instVariables do: [:each | each printOn: aStream]).
	(selectorsArray do: [:each | each printOn: aStream]).