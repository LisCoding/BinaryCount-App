//
//  addMinusDelegate.swift
//  binaryCount
//
//  Created by Liseth Cardozo Sejas on 9/13/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import Foundation
import UIKit

protocol AddMinusDelegate : class {
    func addNumberToTotal(by : UITableViewCell, value : String)
    func substractNumberFronTotal(by : UITableViewCell,  value : String)
    
}
