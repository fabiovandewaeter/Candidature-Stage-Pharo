tests
testAtAtPutOk
	self shouldnt: [ matrix at:1 at:1]
	raise: SubscriptOutOfBounds.
	self assert: (matrix at:1 at:1) equals: 0.
	self assert: (matrix at:2 at:1) equals: 0.
	matrix at:1 at:1 put: 5.
	self assert: (matrix at:1 at:1) equals: 5.
	self assert: (matrix at:2 at:1) equals: 0