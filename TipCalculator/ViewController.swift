//
//  ViewController.swift
//  TipCalculator
//
//  Created by parry on 6/24/16.
//  Copyright © 2016 MCP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func onEdtingChange(sender: AnyObject) {

        guard let text = billField.text, billAmount = Double(text)  else{
            return
        }

        let tip = billAmount * 0.2
        let total = billAmount + tip

        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)

    }

}

