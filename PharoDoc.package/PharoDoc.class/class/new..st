instance creation
new: aPackageName
	"Create an instance without creating the HTML files"
	| aPackage |
	aPackage := RPackageOrganizer default packageNamed: aPackageName.
	^self new
	thePackage: aPackage;
	classesArray: (aPackage definedClasses collect: [:class | PharoDocClass new: class]) asArray;
	yourself