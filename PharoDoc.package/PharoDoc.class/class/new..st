instance creation
new: aPackageName
	| aPackage newClasses |
	aPackage := RPackageOrganizer default packageNamed: aPackageName.
	newClasses := (aPackage definedClasses collect: [:class | PharoDocClass new: class]) asArray.
	^self new
	package: aPackage;
	classes: newClasses;
	yourself