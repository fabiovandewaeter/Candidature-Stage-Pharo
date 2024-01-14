accessing
asSparseMatrix
	"Convert myself into a SparseMatrix"
	| sparseMatrix |
	sparseMatrix := SparseMatrix rows: rows columns: columns.
	1 to: rows do:
		[ :i |  1 to: columns do:
			[ :j | (self at: i at: j) ~= 0 ifTrue: [sparseMatrix at: i at: j put: (self at: i at: j)]]].
	^ sparseMatrix