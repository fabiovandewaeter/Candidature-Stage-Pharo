tests
testAsMatrix
	| newMatrix |
	matrix at:1 at:3 put:3.
	matrix at:1 at:5 put:4.
	matrix at:2 at:3 put:5.
	matrix at:2 at:4 put:7.
	matrix at:4 at:2 put:2.
	matrix at:4 at:3 put:6.
	newMatrix := matrix asMatrix.
	self assert: newMatrix class equals: Matrix.
	self assert: (newMatrix at:1 at:1) equals: 0.
	self assert: (newMatrix at:1 at:2) equals: 0.
	self assert: (newMatrix at:1 at:3) equals: 3.
	self assert: (newMatrix at:1 at:4) equals: 0.
	self assert: (newMatrix at:1 at:5) equals: 4.
	
	self assert: (newMatrix at:2 at:1) equals: 0.
	self assert: (newMatrix at:2 at:2) equals: 0.
	self assert: (newMatrix at:2 at:3) equals: 5.
	self assert: (newMatrix at:2 at:4) equals: 7.
	self assert: (newMatrix at:2 at:5) equals: 0.
	
	self assert: (newMatrix at:3 at:1) equals: 0.
	self assert: (newMatrix at:3 at:2) equals: 0.
	self assert: (newMatrix at:3 at:3) equals: 0.
	self assert: (newMatrix at:3 at:4) equals: 0.
	self assert: (newMatrix at:3 at:5) equals: 0.
	
	self assert: (newMatrix at:4 at:1) equals: 0.
	self assert: (newMatrix at:4 at:2) equals: 2.
	self assert: (newMatrix at:4 at:3) equals: 6.
	self assert: (newMatrix at:4 at:4) equals: 0.
	self assert: (newMatrix at:4 at:5) equals: 0.