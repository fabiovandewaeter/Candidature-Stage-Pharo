accessing
printOn: aStream
	aStream
		nextPutAll: 'selector : ',selectorName ;
		cr;
		nextPutAll: 'senders : ';
		cr.
		(sendersArray do: [:each | each printOn: aStream. aStream space. aStream cr]).
