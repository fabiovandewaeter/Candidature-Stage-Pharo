accessing
asHTMLString
	^'<h4>method name :',selectorName,'</h4><h6>its senders :</h6><ul>',(sendersArray do: [:each | '<li>',each name,'</li>']),'</ul>'