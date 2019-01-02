//
//  TodoList.swift
//  Checklist
//
//  Created by Fritz Ebner on 1/1/19.
//  Copyright © 2019 Fritz Ebner. All rights reserved.
//

import Foundation

class TodoList {
    var todos: [ChecklistItem] = []
    
    init() {
        let row0Item = ChecklistItem()
        row0Item.text = "Take a shit"
        let row1Item = ChecklistItem()
        row1Item.text = "Take a nother one"
        let row2Item = ChecklistItem()
        row2Item.text = "Take a third one"
        
        todos.append(row0Item)
        todos.append(row1Item)
        todos.append(row2Item)
    }
    
    func newTodo() -> ChecklistItem {
        let item = ChecklistItem()
        todos.append(item)
        return item
    }
    func getItem(at indexPath: IndexPath) -> ChecklistItem {
        return todos[indexPath.row]
    }
    
}
