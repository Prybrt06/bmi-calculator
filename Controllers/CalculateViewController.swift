//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var titleView: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    
    var calculateBrain = CalculatorBrain()
    
    var bmiAns = 0.0
    
    override func viewDidLoad() {
        heightSlider.value = 0
        heightValue.text = String(format: "%0.2f m", heightSlider.value)
        
        weightSlider.value = 0
        weightValue.text = String(format: "%0.1f kg", weightSlider.value)
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSelect(_ sender: UISlider) {
        heightValue.text = String(format: "%0.2f m", heightSlider.value)
    }
    
    @IBAction func weightSelect(_ sender: UISlider) {
        weightValue.text = String(format: "%0.1f kg", weightSlider.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        calculateBrain.calculateBMI(height: heightSlider.value, weight: weightSlider.value)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"
        {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculateBrain.getBMIValue()
            destinationVC.advice = calculateBrain.getAdvice()
            destinationVC.color = calculateBrain.getColor()
        }
    }
}

