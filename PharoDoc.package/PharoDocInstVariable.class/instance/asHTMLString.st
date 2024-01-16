accessing
asHTMLString
	| selectorsA |
	selectorsA := selectorsThatReference inject: '' into: [ :concat :elem |  concat,'<li>',elem,'</li>' ].
	^'<h4>variable name :',
	varName,
	'</h4><h6>methods that reference it :</h6><ul>',
	selectorsA,
	'</ul>'