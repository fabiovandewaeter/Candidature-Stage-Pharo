accessing
printOn: aStream
	"Answer the traditional representation of a matrix"
	aStream nextPutAll: '['.
		(1 to: rows) do:
			[ :i | (1 to: columns) do:
				[ :j | aStream print: (self at: i at: j) ]
				separatedBy: [ aStream space]]
			separatedBy: [ aStream cr ].
	aStream nextPutAll: ' ]'