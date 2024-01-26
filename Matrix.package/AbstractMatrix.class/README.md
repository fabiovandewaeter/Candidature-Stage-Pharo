I am an abstract matrix which stores integers and which is filled with 0 by default.

My dimensions are fixed and my elements are stored in an array of arrays.

Public API and Key Messages
- #rows: numberOfRows columns: numberOfColumns is common constructor
- #at: aRow at: aColumn put: aValue allow to change the value of an element

Internal Representation and Key Implementation Points.

Instance Variables
- rows:		<SmallInteger> The number of rows
- columns:		<SmallInteger> The number of columns
- values:		<Array> An Array that contains number of rows arrays of size number of columns