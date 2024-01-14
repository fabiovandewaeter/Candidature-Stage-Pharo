accessing
at: aRow at: aColumn
	| defaultRes |
	1 to: (rowsArray size) do:
		[ :index | (rowsArray at: index) = aRow ifTrue:
			[(columnsArray at: index) = aColumn ifTrue: [^(values at: index)]].
	(aRow <= rows) & (aColumn <= columns) ifTrue: [defaultRes :=3.^0] ifFalse: [defaultRes := 1.SubscriptOutOfBounds signal]].
	^defaultRes