accessing
printOn: aStream
	aStream nextPutAll: 'PharoDocClass(',className name,'=>',superClass name,')'