//
//  ViewController.swift
//  Checklist
//
//  Created by Fritz Ebner on 12/30/18.
//  Copyright © 2018 Fritz Ebner. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1000
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        if let label = cell.viewWithTag(1000) as? UILabel {
            switch (indexPath.row % 5) {
            case 0:
                label.text = "Go for a jog"
            case 1:
                label.text = "Watch GOT"
            case 2:
                label.text = "code apps"
            case 3:
                label.text = "Walk fluffy"
            case 4:
                label.text = "Study patterns"
            default: fatalError("can't get here")
            }
        }
        return cell
    }

}

