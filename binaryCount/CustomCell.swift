//
//  CustomCell.swift
//  binaryCount
//
//  Created by Liseth Cardozo Sejas on 9/13/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import Foundation
import UIKit

class CustomCell : UITableViewCell {
    
    var delegate : AddMinusDelegate?
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBAction func minusButtonWasPressed(_ sender: UIButton) {
        print("Minus button WAS PRESSED")
        delegate?.substractNumberFronTotal(by: self, value: numberLabel.text!)
    }
    
    
    @IBAction func plusButtonWasPressed(_ sender: UIButton) {
        print("something happend here")
        delegate?.addNumberToTotal(by: self, value : numberLabel.text!)
    }
    
}
