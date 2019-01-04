//
//  AdditemTableViewController.swift
//  Checklist
//
//  Created by Fritz Ebner on 1/4/19.
//  Copyright © 2019 Fritz Ebner. All rights reserved.
//

import UIKit

class AdditemTableViewController: UITableViewController {

    @IBAction func cancel(_ sender: UIBarButtonItem) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func add(_ sender: UIBarButtonItem) {
        navigationController?.popViewController(animated: true)
        print("the contents is \(textField.text ?? "empty")")
    }
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        
    }

    // so keyboard automatically shows up
    override func viewWillAppear(_ animated: Bool) {
        textField.becomeFirstResponder()
    }
    
    // so you can't select a row (but you can select the textField thats *in* the row
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return nil
    }
}

extension AdditemTableViewController: UITextFieldDelegate {
    
}
