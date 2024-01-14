tests
testAtAtPutRemovesTheValueFromTheSparseMatrix
	self assert: matrix numberOfNonZeroElements equals: 0.
	matrix at:4 at:3 put:1.
	self assert: matrix numberOfNonZeroElements equals: 1.
	matrix at:4 at:3 put:9.
	self assert: matrix numberOfNonZeroElements equals: 1.
	matrix at:4 at:3 put:0.
	self assert: matrix numberOfNonZeroElements equals: 0.