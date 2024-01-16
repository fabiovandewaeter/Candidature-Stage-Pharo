instance creation
new: aClass
	| dict |
	dict := aClass methodDict.
	^self new
	theClass: aClass;
	superClass: aClass superclass;
	subClasses: aClass subclasses;
	instVariables: (aClass instVarNames collect: [:var | PharoDocInstVariable new: var from: aClass]);
	selectorsArray: (dict keys collect: [:selector | PharoDocSelector new: selector from: aClass]);
	yourself