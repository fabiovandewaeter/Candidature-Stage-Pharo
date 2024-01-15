instance creation
new: aSelector from: aClass
	^self new
	selector: aSelector;
	senders: ((SystemNavigation default allCallsOn: aSelector) select: [:each | each package = aClass package]);
	yourself