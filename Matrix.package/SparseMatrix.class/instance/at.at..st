accessing
at: aRow at: aColumn
	"Answer the value in the aRow row and aColumn column"
	1 to: (rowsArray size) do:
		[ :index | (rowsArray at: index) = aRow ifTrue:
			[(columnsArray at: index) = aColumn ifTrue: [^(values at: index)]]].
	(aRow <= rows) & (aColumn <= columns) & (aRow >= 1) & (aColumn >= 1) ifTrue: [^0] ifFalse: [SubscriptOutOfBounds signal].