# self-generated-table

Usage:

@IBOutlet var table : SelfGeneratedTableView!
.....
let testCell = CategoryViewCell.createCell(some parameters)
var cells : [UITableViewCell] = [testCell]

table.source = [ [ SGTKeyCells : cells ] ]

table.reload()
