accessing
asHTMLString
	| subC instV selectorsA header |
	subC := subClasses inject: '' into: [ :concat :elem | concat,'<li>', elem name,'</li>' ].
	instV := instVariables inject: '' into: [ :concat :elem | concat, elem asHTMLString ].
	selectorsA := selectorsArray inject: '' into: [ :concat :elem | concat, elem asHTMLString ].
	header := '<style>
		body {color: #353833;
			font-family: ''DejaVu Sans'', Arial, Helvetica, sans-serif;
			font-size: 14px;
			margin: 0}
		div {margin-bottom: 15px; position: relative; padding: 10px 20px}
		div.header {margin-top: 15px}
		div.content > div {border: solid lightgrey 1px; background-color: #f8f8f8}
		h3 {color: #353833; font-size: 16px; font-style: italic}
		h4 {background-color: #dee3e9;
  			border: 1px solid #d0d9e0;
 			margin: 0 0 6px -8px;
  			padding: 7px 5px}
	</style>'.
	^'<!DOCTYPE html><html><head>',
	header,
	'</head>
		<body>
			<div class="header">
				<span style=''font-weight:bold''>Package ', theClass package name,'</span>
				<h2 style=''color:#2c4557;font-size:18px''>Class ', theClass name,'</h2>
				<h3>Superclass : ', superClass name,'</h3>
			</div>
			<hr>
			<div class="content">
				<div id=''subclasses''>
					<h3>Subclasses</h3>
					<ul>',subC,'</ul>
				</div>
				<div id=''instancesVariables''>
					<h3>Instances variables</h3>',
					instV,
				'</div>
				<div id=''methods''>
					<h3>Methods</h3>',
					selectorsA,
				'</div>
			</div>
		</body>
	</html>'