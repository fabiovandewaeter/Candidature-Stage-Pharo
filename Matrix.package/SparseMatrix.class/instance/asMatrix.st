accessing
asMatrix
	"Convert myself into a Matrix"
	| matrix |
	matrix := Matrix rows: rows columns: columns.
	1 to: rows do:
		[ :i |  1 to: columns do:
			[ :j | (self at: i at: j) ~= 0 ifTrue: [matrix at: i at: j put: (self at: i at: j)]]].
	^ matrix