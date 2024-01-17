I am a sparse matrix which stores integers but where only non-zero elements are stored.

My dimensions are fixed and my elements are stored in an OrderedCollection and the coordinates of non-zero values are stored in the rowsArray and columnsArray arrays.

Public API and Key Messages

•	#rows: numberOfRows columns: numberOfColumns is common constructor
•	#at: aRow at: aColumn put: aValue allow to change the value of an element
•	asMatrix returns a Matrix equivalent to myself


Examples
```
	"Creation of a 4x5 Matrix :"
	sm := SparseMatrix rows:4 columns:5.
	sm at:1 at:3 put:3.
	sm at:1 at:5 put:4.
	sm at:2 at:3 put:5.
	sm at:2 at:4 put:7.
	sm at:4 at:2 put:2.
	sm at:4 at:3 put:6.
	sm.
	"returns:
	[1 1 2 2 4 4]
	[3 5 3 4 2 3]
	[3 4 5 7 2 6]"

	sm asMatrix.
	"returns:
	[0 0 3 0 4
	0 0 5 7 0
	0 0 0 0 0
	0 2 6 0 0 ]"
```

Internal Representation and Key Implementation Points.

Instance Variables

•	rows:		<SmallInteger> The number of rows
•	columns:		<SmallInteger> The number of columns
• rowsArray: 	<OrderedCollection> The array of all rows numbers of non-zero values
• columnsArray: 	<OrderedCollection> The array of all columns numbers of non-zero values
•	values:		<Array> An Array that contains number of rows arrays of size number of columns