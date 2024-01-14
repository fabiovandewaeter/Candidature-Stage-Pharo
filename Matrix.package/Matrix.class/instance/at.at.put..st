accessing
at: aRow at: aColumn put: aValue
	"Put aValue in the aRow row and aColumn column"
	(values at: aRow) at: aColumn put: aValue