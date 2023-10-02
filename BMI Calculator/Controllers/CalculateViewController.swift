//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var bmi = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        height.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weight.text = String(format: "%.0f", sender.value) + "kg"
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        bmi = String(format: "%.2f", weightSlider.value / pow(heightSlider.value, 2))
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Gets called before the segue to ResultsViewController is called
        //Because ResultsViewController is not being manually created by me, use this function to pass value
        if (segue.identifier == "goToResults") {
            let destinationVC = segue.destination as! ResultsViewController
            //as! is called downcasting
            //segue.destination is type UIViewController, but by downcasting, we changed it to a child class, ResultsViewController
            destinationVC.bmi = bmi
        }
    }
}

