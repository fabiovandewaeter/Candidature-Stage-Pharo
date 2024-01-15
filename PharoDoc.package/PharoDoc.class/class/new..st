instance creation
new: aPackageName
	| aPackage newClasses |
	aPackage := RPackageOrganizer default packageNamed: aPackageName.
	^self new
	package: aPackage;
	classes: (aPackage definedClasses collect: [:class | PharoDocClass new: class]) asArray;
	yourself