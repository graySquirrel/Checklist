//
//  ChecklistItem.swift
//  Checklist
//
//  Created by Fritz Ebner on 1/1/19.
//  Copyright © 2019 Fritz Ebner. All rights reserved.
//

import Foundation

class ChecklistItem {
    var text = ""
    var checked = true
    init() {
        let number = Int.random(in: 0..<5)
        switch number {
        case 0:
            text = "new gogo"
        case 1:
            text = "how did you konw"
        case 2:
            text = "well done son"
        case 3:
            text = "foo is barred"
        case 4:
            text = "who knew"
        default:
            text = "Can't get here"
            fatalError("number out of bounds")
        }
    }
    func toggleChecked() {
        checked = !checked
    }
}
