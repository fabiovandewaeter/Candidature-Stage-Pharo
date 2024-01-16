accessing
asHTMLString
	^'<!DOCTYPE html><html><h1>', theClass name,'</h1>','<h3>Supclass :</h3>',superClass name,'<h3>Subclasses :</h3><ul>',(subClasses do: [ :class | '<li>',class name,'</li>' ] ) asString,'</ul><h3>Instances variables :</h3>',(instVariables do: [ :var | var asHTMLString ]) asString,'<h3>Methods :</h3>',(selectorsArray do: [:method | method asHTMLString]) asString,'</html>'