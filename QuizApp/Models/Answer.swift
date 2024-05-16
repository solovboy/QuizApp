//
//  Answer.swift
//  QuizApp
//
//  Created by Иван Соловьев on 26.04.2024.
//

import Foundation

struct Answer: Decodable{
    var text: String
    var isCorrect: Bool
    
    func selectAnswer(controller: QuizController){
        controller.answerSelected = true
        if isCorrect {
            controller.score += 1
        }
    }
}
