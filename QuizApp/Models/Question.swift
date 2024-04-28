//
//  Question.swift
//  QuizApp
//
//  Created by Иван Соловьев on 26.04.2024.
//

import Foundation

struct Question{
    var topic: String
    var id: Int
    var text: String
    var correctAnswer: Int
    var answers: [Answer]
}