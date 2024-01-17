I the documentation of a class for the PharoDoc that created me.

I take a class and I do its documentation, creating the PharoDocInstVariable and PharoDocMethod of the class.

Public API and Key Messages
- #new: aClass		create an instance of myself and all the PharoDocInstVariable and PharoDocMethod of the class
- #printHtmlOn: aStream		write the class documentation in an HTML page in aStream

Internal Representation and Key Implementation Points.

Instance Variables 
- theClass:		<class> The class
- superClass:	<class> The superclass
- subClasses:	<Array> Its subclasses
- instVariables:	<Array> All instance variables of the class
- methodsArray:		<Array> All methods of the class