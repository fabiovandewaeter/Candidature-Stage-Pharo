accessing
printOn: aStream
	aStream
	nextPutAll: 'Class : ',className name;
	cr;
	nextPutAll: 'SuperClass : ',superClass name;
	cr;
	nextPutAll: 'SubClasses : ';
	cr.
	(subClasses do: [:each | each printOn: aStream. aStream space. aStream cr]).
	(instVariables do: [:each | each printOn: aStream]).
	(selectors do: [:each | each printOn: aStream]).