//
//  CellTableViewCell.swift
//  GroupedTest
//
//  Created by Davide Vincenzi on 13.10.16.
//  Copyright © 2016 Davide Vincenzi. All rights reserved.
//

import UIKit
import DTModelStorage

class CellTableViewCell: UITableViewCell {

    
}

extension CellTableViewCell: ModelTransfer {
    
    func update(with model: String) {
        textLabel?.text = model
    }
}
