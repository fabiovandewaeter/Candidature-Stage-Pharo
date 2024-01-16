instance creation
new: aSelector from: aClass
	^self new
	selectorName: aSelector;
	sendersArray: ((SystemNavigation default allCallsOn: aSelector) select: [:each | each package = aClass package]);
	yourself