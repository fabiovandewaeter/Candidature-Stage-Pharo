tests
testAsSparseMatrix
	| sparseMatrix |
	matrix at:1 at:3 put:3.
	matrix at:1 at:5 put:4.
	matrix at:2 at:3 put:5.
	matrix at:2 at:4 put:7.
	matrix at:4 at:2 put:2.
	matrix at:4 at:3 put:6.
	sparseMatrix := matrix asSparseMatrix.
	self assert: sparseMatrix class equals: SparseMatrix.
	self assert: (sparseMatrix at:1 at:1) equals: 0.
	self assert: (sparseMatrix at:1 at:2) equals: 0.
	self assert: (sparseMatrix at:1 at:3) equals: 3.
	self assert: (sparseMatrix at:1 at:4) equals: 0.
	self assert: (sparseMatrix at:1 at:5) equals: 4.
	
	self assert: (sparseMatrix at:2 at:1) equals: 0.
	self assert: (sparseMatrix at:2 at:2) equals: 0.
	self assert: (sparseMatrix at:2 at:3) equals: 5.
	self assert: (sparseMatrix at:2 at:4) equals: 7.
	self assert: (sparseMatrix at:2 at:5) equals: 0.
	
	self assert: (sparseMatrix at:3 at:1) equals: 0.
	self assert: (sparseMatrix at:3 at:2) equals: 0.
	self assert: (sparseMatrix at:3 at:3) equals: 0.
	self assert: (sparseMatrix at:3 at:4) equals: 0.
	self assert: (sparseMatrix at:3 at:5) equals: 0.
	
	self assert: (sparseMatrix at:4 at:1) equals: 0.
	self assert: (sparseMatrix at:4 at:2) equals: 2.
	self assert: (sparseMatrix at:4 at:3) equals: 6.
	self assert: (sparseMatrix at:4 at:4) equals: 0.
	self assert: (sparseMatrix at:4 at:5) equals: 0.