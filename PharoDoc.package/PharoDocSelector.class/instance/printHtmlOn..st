accessing
printHtmlOn: aStream
	aStream nextPutAll: '<li><h4>'; nextPutAll: selectorName; nextPutAll: '</h4>
	<h5>-> its senders :</h5>
	<ul>'. sendersArray do: [ :elem | aStream nextPutAll: '<li>'; nextPutAll: elem name; nextPutAll: '</li>' ]. aStream nextPutAll: '</ul></li>'