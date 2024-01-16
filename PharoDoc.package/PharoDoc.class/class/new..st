instance creation
new: aPackageName
	| aPackage newClasses |
	aPackage := RPackageOrganizer default packageNamed: aPackageName.
	^self new
	packageName: aPackage;
	classesArray: (aPackage definedClasses collect: [:class | PharoDocClass new: class]) asArray;
	yourself