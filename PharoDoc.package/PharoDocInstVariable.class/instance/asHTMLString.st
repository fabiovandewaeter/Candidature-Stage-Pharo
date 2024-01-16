accessing
asHTMLString
	^'<h4>variable name :',varName,'</h4><h6>methods that reference it :</h6><ul>',(selectorsThatReference do: [:each | '<li>',each name,'</li>']),'</ul>'