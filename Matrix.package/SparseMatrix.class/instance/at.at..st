accessing
at: aRow at: aColumn
	1 to: (rowsArray size) do:
		[ :index | (rowsArray at: index) = aRow ifTrue:
			[(columnsArray at: index) = aColumn ifTrue: [^(values at: index)]]].
	(aRow <= rows) & (aColumn <= columns) ifTrue: [^0] ifFalse: [SubscriptOutOfBounds signal].