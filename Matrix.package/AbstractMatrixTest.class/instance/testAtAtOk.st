tests
testAtAtOk
	self shouldnt: [ matrix at:1 at:1]
	raise: SubscriptOutOfBounds.
	self assert: (matrix at:1 at:1) equals: 0