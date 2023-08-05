//
//  Question.swift
//  quizzler
//
//  Created by Дарья Сотникова on 05.08.2023.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        self.text = q
        self.answer = a
    }
}
