accessing
asHTMLString
	| subC instV selectorsA |
	subC := subClasses inject: '' into: [ :concat :elem | concat,'<li>',elem name,'</li>' ].
	instV := instVariables inject: '' into: [ :concat :elem | concat, elem asHTMLString ].
	selectorsA := selectorsArray inject: '' into: [ :concat :elem | concat, elem asHTMLString ].
	^'<!DOCTYPE html><html><h1>',
	theClass name,
	'</h1><h3>Supclass :</h3>',
	superClass name,
	'<h3>Subclasses :</h3><ul>',
	subC,'</ul><h3>Instances variables :</h3>',
	instV,
	'<h3>Methods :</h3>',
	selectorsA,
	'</html>'