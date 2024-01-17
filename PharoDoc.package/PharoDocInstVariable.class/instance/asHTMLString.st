accessing
asHTMLString
	| selectorsA |
	selectorsA := selectorsThatReference inject: '' into: [ :concat :elem |  concat,'<li>',elem,'</li>' ].
	^'<h4>',varName,'</h4>
	<h5>-> methods that reference it : </h5>
		<ul>',selectorsA,'</ul>'