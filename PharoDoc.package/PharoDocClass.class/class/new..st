instance creation
new: aClass
	| dict |
	dict := aClass methodDict.
	^self new
	className: aClass;
	superClass: aClass superclass;
	subClasses: aClass subclasses;
	instVariables: (aClass instVarNames collect: [:var | PharoDocInstVariable new: var from: aClass]);
	selectors: (dict values collect: [:selector | PharoDocSelector new: selector from: aClass]);
	yourself