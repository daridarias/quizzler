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
    
    let quiz = [
        ["4 + 6 = 10", "True"],
        ["1 + 1 < 3", "True"],
        ["2 + 2 > 5", "False"]
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func anwerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber][1]
        
        if userAnswer == actualAnswer {
            print("right")
        } else {
            print("wrong")
        }
        
        if questionNumber == quiz.count - 1 {
            questionNumber = 0
        } else {
            questionNumber += 1
        }
        
        updateUI()
    }
    
    func updateUI() {
        questionLabel?.text = quiz[questionNumber][0]
    }
}

