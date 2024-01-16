accessing
asHTMLString
	^'<!DOCTYPE html><html><h1>',className,'</h1>','<h3>Supclass :</h3>',superClass,'<h3>Subclasses :</h3><ul>',(subClasses do: [ :class | '<li>',class name,'</li>' ] ),'</ul><h3>Instances variables :</h3>',(instVariables do: [ :var | var asHTMLString ]),'<h3>Methods :</h3>',(selectorsArray do: [:method | method asHTMLString]),'</html>'