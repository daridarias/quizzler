//
//  ViewController.swift
//  quizzler
//
//  Created by Дарья Сотникова on 02.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel?
    @IBOutlet weak var progressBar: UIProgressView?
    @IBOutlet weak var trueButton: UIButton?
    @IBOutlet weak var falseButton: UIButton?
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func anwerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let userGotItRight = quizBrain.checkAnswer(userAnswer ?? "")
    
        if userGotItRight {
            sender.backgroundColor = .green
        } else {
            sender.backgroundColor = .red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI() {
        questionLabel?.text = quizBrain.getQuestionText(for: quizBrain.questionNumber)
        progressBar?.progress = quizBrain.getProgress(count: quizBrain.quiz.count)

        trueButton?.backgroundColor = .clear
        falseButton?.backgroundColor = .clear

    }
}
