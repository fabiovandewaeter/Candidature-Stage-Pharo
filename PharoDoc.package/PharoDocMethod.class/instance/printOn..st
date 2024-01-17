accessing
printOn: aStream
	aStream
		nextPutAll: 'selector : ', methodName;
		cr;
		nextPutAll: 'senders : ';
		cr.
		(sendersArray do: [:each | each printOn: aStream. aStream space. aStream cr]).
