//
//  DetailViewController.swift
//  HomeBNR App
//
//  Created by Volodymyr Romanov on 8/19/16.
//  Copyright © 2016 Volodymyr Romanov. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var serialTextField: UITextField!
    @IBOutlet weak var valueTextField: UITextField!
    @IBOutlet weak var dateLabel: UILabel!
    
    var item: Item!
    
    let numberFormatter: NSNumberFormatter = {
        let formatter = NSNumberFormatter()
        formatter.numberStyle = .DecimalStyle
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }()
    
    let dateFormatter: NSDateFormatter = {
        let formatter = NSDateFormatter()
        formatter.dateStyle = .MediumStyle
        formatter.timeStyle = .NoStyle
        return formatter
    }()
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        nameTextField.text = item.name
        serialTextField.text = item.serialNumber
        valueTextField.text = numberFormatter.stringFromNumber(item.valueInDollars)
        dateLabel.text = dateFormatter.stringFromDate(item.dateCreated)
    }
}
