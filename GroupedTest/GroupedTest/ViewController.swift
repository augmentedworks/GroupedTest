//
//  ViewController.swift
//  GroupedTest
//
//  Created by Davide Vincenzi on 11.10.16.
//  Copyright © 2016 Davide Vincenzi. All rights reserved.
//

import UIKit
import DTTableViewManager

class ViewController: UITableViewController, DTTableViewManageable {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        manager.startManaging(withDelegate: self)
        manager.register(CellTableViewCell.self)
        
        manager.memoryStorage.addItem("Dog", toSection: 0)
        manager.memoryStorage.addItem("Cat", toSection: 0)
        
        manager.memoryStorage.addItem("Man", toSection: 1)
        manager.memoryStorage.addItem("Woman", toSection: 1)
        
        /* Doesn't work
        manager.heightForFooter(withItem: String.self) { (model, section) -> CGFloat in
            return 20
        }
         */
    }
    
    /* Doesn't work either
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 20
    }
     */
}

