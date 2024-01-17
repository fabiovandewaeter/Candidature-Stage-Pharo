instance creation
new: aVarName from: aClass
	^self new
	varName: aVarName;
	methodsThatReference: (aClass whichSelectorsAccess: aVarName);
	yourself