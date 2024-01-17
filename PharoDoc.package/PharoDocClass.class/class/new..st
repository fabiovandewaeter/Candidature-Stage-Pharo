instance creation
new: aClass
	| dict |
	dict := aClass methodDict.
	^self new
	theClass: aClass;
	superClass: aClass superclass;
	subClasses: aClass subclasses;
	instVariables: (aClass instVarNames collect: [:var | PharoDocInstVariable new: var from: aClass]);
	methodsArray: (dict keys collect: [:method | PharoDocMethod new: method from: aClass]);
	yourself