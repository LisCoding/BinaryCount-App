//
//  ViewController.swift
//  binaryCount
//
//  Created by Liseth Cardozo Sejas on 9/13/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import UIKit

class BinaryCountViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, AddMinusDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var totalLAbel: UILabel!
    
    var binaryNumbers = ["1", "10", "100", "1000", "10000", "100000", "1000000", "10000000", "100000000", "1000000000", "10000000000", "100000000000"]
    var total = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Loaded")
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return binaryNumbers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomCell
        cell.numberLabel.text = binaryNumbers[indexPath.row]
        cell.delegate = self
        return cell
    }
    
    func addNumberToTotal(by: UITableViewCell, value: String) {
        print("I add clicked", value)
    
        total += Int(value)!
        totalLAbel.text = "Total: \(String(total))"
        
        
    }
    
    func substractNumberFronTotal(by : UITableViewCell, value : String){
        print("this minus value", value)
        
        total -= Int(value)!
        totalLAbel.text = "Total: \(String(total))"

    }
    


}

