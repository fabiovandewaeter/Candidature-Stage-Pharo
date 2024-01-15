accessing
printOn: aStream
	aStream
		nextPutAll: 'selector : ',selector name;
		cr;
		nextPutAll: 'senders : ';
		cr.
		(senders do: [:each | each printOn: aStream. aStream space. aStream cr]).
