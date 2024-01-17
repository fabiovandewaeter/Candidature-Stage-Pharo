accessing
printHtmlOn: aStream
	aStream nextPutAll: '<li><h4>'; nextPutAll: varName; nextPutAll: '</h4>
	<h5>-> methods that reference it : </h5>
		<ul>'. selectorsThatReference do: [ :elem |  aStream nextPutAll: '<li>'; nextPutAll: elem; nextPutAll: '</li>' ]. aStream nextPutAll: '</ul></li>'