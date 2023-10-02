//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Simon Oh on 9/27/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmi: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmi
    }
    

    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }

}
