//
//  ViewController.swift
//  HappiPlan
//
//  Created by Marcelo Campos on 28/04/25.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var adultsValue: Int = 0
    var childrenValue: Int = 0
    var hoursValue: Int = 0

    @IBOutlet weak var adultsField: UITextField!
    @IBOutlet weak var childrenField: UITextField!
    @IBOutlet weak var hoursLabel: UILabel!
    @IBOutlet weak var hoursSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func hoursSliderChanged(_ sender: UISlider) {
        let hours = Int(sender.value)
        hoursLabel.text = "\(hours) Horas"
    }
    
    //Every time screen touched the keyboard hidden
    /*override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }*/

    @IBAction func calculatePressed(_ sender: UIButton) {
        let hoursValueString = String(format: "%.0f", hoursSlider.value)
        
        //(!) Exclamation dot unwrap the field text option
        adultsValue = Int(adultsField.text!) ?? 0
        childrenValue = Int(childrenField.text!) ?? 0
        hoursValue = Int(hoursValueString) ?? 0
        
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.adultsValue = adultsValue
            destinationVC.childrenValue = childrenValue
            destinationVC.hoursValue = hoursValue
        }
    }
    
}
