accessing
asHTMLString
	| sendersA |
	sendersA := sendersArray inject: '' into: [ :concat :elem | concat,'<li>',elem name,'</li>' ].
	^'<h4>method name :',
	selectorName,
	'</h4><h6>its senders :</h6><ul>',
	sendersA,
	'</ul>'