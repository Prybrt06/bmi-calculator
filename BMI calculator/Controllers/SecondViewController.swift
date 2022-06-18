//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Priyabrat  Duarah on 31/05/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController : UIViewController
{
    
    var bmiValue = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .cyan
        
        let label = UILabel()
        label.text = String(format: "%f", bmiValue)
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        
        view.addSubview(label)
    }
}
