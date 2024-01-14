accessing
at: aRow at: aColumn put: aValue
	"Put aValue in the aRow row and aColumn column"
	1 to: (rowsArray size) do:
		[ :index | (rowsArray at: index) = aRow ifTrue:
			[(columnsArray at: index) = aColumn ifTrue:
				[aValue = 0 ifTrue: [rowsArray removeAt: index. columnsArray removeAt: index. values removeAt: index] ifFalse: [values at: index put: aValue].^self]]].
	(aRow <= rows) & (aColumn <= columns) ifTrue:
		[aValue ~= 0 ifTrue: [rowsArray add: aRow. columnsArray add: aColumn. values add: aValue]]
		ifFalse: [SubscriptOutOfBounds signal]