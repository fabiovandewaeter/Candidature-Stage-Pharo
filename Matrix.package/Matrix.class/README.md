I am a traditional matrix which stores integers and which is filled with 0 by default.

My dimensions are fixed and my elements are stored in an array of arrays.

Public API and Key Messages
- #rows: numberOfRows columns: numberOfColumns is common constructor
- #at: aRow at: aColumn put: aValue allow to change the value of an element
- asSparseMatrix returns a SparseMatrix equivalent to myself

Examples
```
	"Creation of a 4x5 Matrix :"
	m := Matrix rows:4 columns:5.
	m at:1 at:3 put:3.
	m at:1 at:5 put:4.
	m at:2 at:3 put:5.
	 at:2 at:4 put:7.
	m at:4 at:2 put:2.
	m at:4 at:3 put:6.
	m.
	"returns:
	[0 0 3 0 4
	0 0 5 7 0
	0 0 0 0 0
	0 2 6 0 0 ]"

	m asSparseMatrix.
	"returns:
	[1 1 2 2 4 4]
	[3 5 3 4 2 3]
	[3 4 5 7 2 6]"
```

Internal Representation and Key Implementation Points.

Instance Variables
- rows:		<SmallInteger> The number of rows
- columns:		<SmallInteger> The number of columns
- values:		<Array> An Array that contains number of rows arrays of size number of columns