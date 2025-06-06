//
//  ViewController.swift
//  Curious-D2
//
//  Created by Marcelo Campos on 10/03/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        if(quizBrain.lastQuestion()){
            self.showResults()
        }
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    func showResults() {
        performSegue(withIdentifier: "resultSegue", sender: nil)
    }
    
    //send information to another screen
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController = segue.destination as! ResultViewController
        resultViewController.resultScore = quizBrain.score
        resultViewController.totalQuestions = quizBrain.getTotalQuestions()
    }
    
    @objc func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "\(quizBrain.getScore())"
        trueButton.backgroundColor = UIColor.clear
        trueButton.layer.cornerRadius = 10
        trueButton.layer.borderWidth = 5
        trueButton.layer.borderColor = CGColor.init(red: 240, green: 239, blue: 252, alpha: 100)
        falseButton.backgroundColor = UIColor.clear
        falseButton.layer.cornerRadius = 10
        falseButton.layer.borderWidth = 5
        falseButton.layer.borderColor = CGColor.init(red: 240, green: 239, blue: 252, alpha: 100)
    }
}

