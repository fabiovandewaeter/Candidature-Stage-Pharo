instance creation
new: aMethod from: aClass
	^self new
	methodName: aMethod;
	sendersArray: ((SystemNavigation default allCallsOn: aMethod) select: [:each | each package = aClass package]);
	yourself