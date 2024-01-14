instance creation
rows: numberOfRows columns: numberOfColumns
	"Create a traditional Matrix with numberOfRows rows and numberOfColumns columns, filled with 0"
	^ self new
	rows: numberOfRows;
	columns: numberOfColumns;
	rowsArray: OrderedCollection new;
	columnsArray: OrderedCollection new;
	values: OrderedCollection new