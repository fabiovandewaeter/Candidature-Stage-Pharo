accessing
printHtmlOn: aStream
	|  header |
	header := '
	<style>
		body {color: #353833; font-family: ''DejaVu Sans'', Arial, Helvetica, sans-serif; font-size: 14px; margin: 0}
		div {margin-bottom: 15px; position: relative; padding: 10px 20px}
		div.header {margin-top: 15px}
		div.content>div {border: solid lightgrey 1px; background-color: #f8f8f8}
		ul.specials {list-style: none; padding-left: 8px}
		ul.specials>li {margin-bottom: 10px; background-color: #ffffff; padding-left: 8px; margin-left: -18px; padding-bottom: 10px}
		h3 {color: #2c4557; font-size: 16px; font-style: italic}
		h4 {background-color: #dee3e9; border: 1px solid #d0d9e0; margin: 0 0 6px -8px; padding: 7px 5px}
	</style>'.
	aStream nextPutAll: '
	<!DOCTYPE html>
	<html>
		<head>';
	nextPutAll: header;
	nextPutAll: '
		</head>
			<body>
				<div class="header">
					<span style=''font-weight:bold''>Package '; nextPutAll: theClass package name; nextPutAll: '</span>
					<h2 style=''color:#2c4557;font-size:18px''>Class '; nextPutAll: theClass name; nextPutAll: '</h2>
					<h3>Superclass : '; nextPutAll: superClass name; nextPutAll: '</h3>
				</div>
				<hr>
				<div class="content">
					<div id=''subclasses''>
						<h3>Subclasses</h3>
						<ul>'. (subClasses size ~= 0 ifTrue: [subClasses do: [ :elem | aStream nextPutAll: '<li>'; nextPutAll: elem name; nextPutAll: '</li>' ]] ifFalse: [aStream nextPutAll: '<p style=''color: red''>no subclasses</p>']). aStream nextPutAll: '</ul>
					</div>
					<div id=''instancesVariables''>
						<h3>Instances variables</h3>
						<ul class=''specials''>'. (instVariables do: [ :elem | elem printHtmlOn: aStream ]). aStream nextPutAll: '</ul>
					</div>
					<div id=''methods''>
						<h3>Methods</h3>
						<ul class=''specials''>'. (methodsArray do: [ :elem | elem printHtmlOn: aStream ]). aStream nextPutAll: '</ul>
					</div>
				</div>
			</body>
		</html>'