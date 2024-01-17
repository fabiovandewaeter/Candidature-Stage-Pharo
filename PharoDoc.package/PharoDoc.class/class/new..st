instance creation
new: aPackageName
	| aPackage |
	aPackage := RPackageOrganizer default packageNamed: aPackageName.
	^self new
	thePackage: aPackage;
	classesArray: (aPackage definedClasses collect: [:class | PharoDocClass new: class]) asArray;
	yourself