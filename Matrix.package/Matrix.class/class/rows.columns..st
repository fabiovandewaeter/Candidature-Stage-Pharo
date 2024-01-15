instance creation
rows: numberOfRows columns: numberOfColumns
	"Create a traditional Matrix with numberOfRows rows and numberOfColumns columns, filled with 0"
	^ self new
	rows: numberOfRows;
	columns: numberOfColumns;
	values: ((Array new: numberOfRows) collect: [:each|((Array new: numberOfColumns) collect: [:eachNew|0])]);
	yourself