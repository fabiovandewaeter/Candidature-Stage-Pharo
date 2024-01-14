tests
testAtAtShouldRaiseErrorIfOutOfBounds
	self should: [ matrix at:0 at:1]
	raise: SubscriptOutOfBounds.
	self should: [ matrix at:1 at:80]
	raise: SubscriptOutOfBounds.
	self should: [ matrix at:4 at:6]
	raise: SubscriptOutOfBounds.