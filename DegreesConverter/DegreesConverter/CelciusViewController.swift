//
//  CelciusViewController.swift
//  DegreesConverter
//
//  Created by Volodymyr Romanov on 8/18/16.
//  Copyright © 2016 Volodymyr Romanov. All rights reserved.
//

import UIKit

class CelciusViewController: UIViewController {
    @IBOutlet weak var celciusField: UITextField!
    @IBOutlet weak var fahrenheitField: UILabel!
    @IBAction func celciusFieldChanged(sender: AnyObject) {
        if !(celciusField.text?.isEmpty)! {
        if let text = celciusField.text {
            print("\(text)")
            if let celciusValue = Double(text) {
                let val = convertCelciusToFahrenheit(celciusValue)
                fahrenheitField.text = numberFormatter.stringFromNumber(val)
            }
        }
        } else {
            fahrenheitField.text = "Enter a value!"
        }
        
    }
    @IBAction func dismissKeyboard(sender: AnyObject) {
        celciusField.resignFirstResponder()
    }
    
    let numberFormatter: NSNumberFormatter = {
        let nf = NSNumberFormatter()
        nf.numberStyle = .DecimalStyle
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        return nf
    }()
    
    private func convertCelciusToFahrenheit(celcius: Double) -> Double {
        return celcius * 2 + 32
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
