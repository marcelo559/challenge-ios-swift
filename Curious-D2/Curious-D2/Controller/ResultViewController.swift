//
//  ResultViewController.swift
//  Curious-D2
//
//  Created by Marcelo Campos on 03/04/25.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var percentageLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var resultImageView: UIImageView!
    
    var resultScore: Int = 0
    var totalQuestions: Int = 0
    var themedMessage: String = "Dopey"
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        let percentageScore = resultScore*100/totalQuestions
        percentageLabel.text = "\(percentageScore)%"
        
        updateResultScreen(for: percentageScore)
        
    }
    
    @IBAction func closeButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    func updateResultScreen(for percentageScore: Int) {
        var themedMessage: String
        var themedImage: String
        
        if percentageScore <= 24 {
            themedMessage = "Oh no! Even Dopey did better..."
            themedImage = "Score2"
        } else if percentageScore > 24 && percentageScore <= 49 {
            themedMessage = "You're almost halfway to happily ever after!"
            themedImage = "Score3"
        } else if percentageScore > 49 && percentageScore <= 75 {
            themedMessage = "You're basically royalty!"
            themedImage = "Score4"
        } else {
            themedMessage = "You’re a true Disney trivia master!"
            themedImage = "Score5"
        }
        
        descriptionLabel.text = themedMessage
        resultImageView.image = UIImage(named: themedImage)
    }
}
