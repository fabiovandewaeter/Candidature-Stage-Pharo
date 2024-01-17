accessing
asHTMLString
	| sendersA |
	sendersA := sendersArray inject: '' into: [ :concat :elem | concat,'<li>',elem name,'</li>' ].
	^'<h4>', methodName,'</h4>
	<h5>-> its senders :</h5>
	<ul>',sendersA,'</ul>'