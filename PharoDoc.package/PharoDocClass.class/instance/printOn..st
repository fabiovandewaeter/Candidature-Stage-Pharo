accessing
printOn: aStream
	aStream
	nextPutAll: 'Class : ',className name;
	cr;
	nextPutAll: 'SuperClass : ',superClass name;
	cr;
	nextPutAll: 'SubClasses : '.
	(subClasses do: [:each | each printOn: aStream. aStream space. aStream cr]).
	(instVariables printOn: aStream).
	(selectors printOn: aStream)