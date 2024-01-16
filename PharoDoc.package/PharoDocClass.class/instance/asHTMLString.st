accessing
asHTMLString
	| subC instV selectorsA header |
	subC := subClasses inject: '' into: [ :concat :elem | concat,'<li>',elem name,'</li>' ].
	instV := instVariables inject: '' into: [ :concat :elem | concat, elem asHTMLString ].
	selectorsA := selectorsArray inject: '' into: [ :concat :elem | concat, elem asHTMLString ].
	header := '<style>body {background-color: lightgrey} div {border: solid black 1px}</style>'.
	^'<!DOCTYPE html><html><head>',
	header,
	'</head><body><h1>',
	theClass name,
	'</h1><h3>Supclass :</h3>',
	superClass name,
	'<div id=''sublcasses''><h3>Subclasses :</h3><ul>',
	subC,'</ul><h3>Instances variables :</h3>',
	instV,
	'</div><div id=''methods''><h3>Methods :</h3>',
	selectorsA,
	'</div></body></html>'