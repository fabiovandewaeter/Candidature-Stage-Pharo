tests
testNewConstructorFindPackageAndCreateAllPharoDocClass
	| doc |
	doc := PharoDoc new: #PharoDoc.
	self assert: doc thePackage name equals: #PharoDoc.
	self assert: doc classesArray size equals: 5