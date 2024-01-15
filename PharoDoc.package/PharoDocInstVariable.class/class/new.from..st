instance creation
new: varName from: aClass
	^self new
	name: varName;
	selectorsThatReference: (aClass whichSelectorsAccess: varName);
	yourself