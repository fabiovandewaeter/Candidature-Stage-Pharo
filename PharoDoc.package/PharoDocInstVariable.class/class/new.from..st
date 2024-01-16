instance creation
new: aVarName from: aClass
	^self new
	varName: aVarName;
	selectorsThatReference: (aClass whichSelectorsAccess: aVarName);
	yourself