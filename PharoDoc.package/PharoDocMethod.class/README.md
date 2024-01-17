I create the documentation of a method for the PharoDocClass that created me.

I take a method and its class, and I do its documentation by finding its senders.

Public API and Key Messages
- #new: aMethod from: aClass		create an instance of myself for the method aMethod of the class aClass
- #printHtmlOn: aStream		write the method documentation as HTML in aStream

Internal Representation and Key Implementation Points.

Instance Variables 
- methodName:		<ByteSymbole> A method
- sendersArray:		<Array> All the senders of the method
		
	 