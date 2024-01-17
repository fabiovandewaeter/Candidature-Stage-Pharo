I create the documentation of an instance variable for the PharoDocClass that created me.

I take an instance variable and its class, and I do its documentation by finding the methods that refer to it.

Public API and Key Messages
- #new: aVarName from: aClass		create an instance of myself for the instance variable aVarName of the class aClass
- #printHtmlOn: aStream		write the instance variable documentation as HTML in aStream

Internal Representation and Key Implementation Points.

Instance Variables 
- varName:		<ByteSymbole> An instance variable
- methodsThatReference:		<Array> All the methods that refer to the variable