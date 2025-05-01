//
//  ResultViewController.swift
//  HappiPlan
//
//  Created by Marcelo Campos on 29/04/25.
//

import UIKit

class ResultViewController: UIViewController {
    
    var adultsValue: Int = 0
    var childrenValue: Int = 0
    var hoursValue: Int = 0
    
    @IBOutlet weak var foodLabel: UILabel!
    @IBOutlet weak var cakeLabel: UILabel!
    @IBOutlet weak var juiceLabel: UILabel!
    @IBOutlet weak var sodaLabel: UILabel!
    @IBOutlet weak var waterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let supplies = calculatePartyPlan(adults: adultsValue, children: childrenValue, duration: hoursValue)
        
        let foodKgsNew = changeDotComma(valueNum: supplies.foodKgs, caracter: ",")
        let cakeKgsNew = changeDotComma(valueNum: supplies.cakeKgs, caracter: ",")
        let juiceLtsNew = changeDotComma(valueNum: supplies.juiceLts, caracter: ",")
        let sodaLtsNew = changeDotComma(valueNum: supplies.sodaLts, caracter: ",")
        let waterLtsNew = changeDotComma(valueNum: supplies.waterLts, caracter: ",")
        
        foodLabel.text = "\(foodKgsNew) Kgs"
        cakeLabel.text = "\(cakeKgsNew) Kgs"
        juiceLabel.text = "\(juiceLtsNew) Lts"
        sodaLabel.text = "\(sodaLtsNew) Lts"
        waterLabel.text = "\(waterLtsNew) Lts"
    }
    
    /* Look class 11 at Section 2 from Eric Brito Course
    func showResults() {
       view Results.isHidden = true/false
    }
    
    func showAlert() {
        view Alert.isHidden = true/ false
    }
     */
    func changeDotComma(valueNum: Double, caracter: String) -> String {
        let valueString = String(valueNum)
        let newValue = valueString.replacingOccurrences(of: ".", with: caracter, options: .literal, range: nil)
        return newValue
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
