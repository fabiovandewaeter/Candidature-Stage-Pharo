instance creation
rows: numberOfRows columns: numberOfColumns
	"Create an abstract Matrix with numberOfRows rows and numberOfColumns columns, filled with 0"
	^ self subclassResponsibility