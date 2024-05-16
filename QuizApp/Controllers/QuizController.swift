//
//  QuizController.swift
//  QuizApp
//
//  Created by Иван Соловьев on 26.04.2024.
//

import Foundation

class QuizController: ObservableObject{
    let length: Int
    var questions:[Question] = []
    @Published var score = 0
    @Published var index = 0
    @Published var end = false
    @Published var answerSelected = false
    @Published var question: String = ""
    @Published var answers: [Answer] = []
    
    init(questions: [Question]){
        self.length = questions.count
        self.questions = questions
        setQuestion()
    }
    func goToNextQuestion(){
        if index + 1 < length{
            index += 1
            setQuestion()
        } else{
            self.end = true
            index = 0
        }
    }
    
    func setQuestion(){
        answerSelected = false
        
        if index < length{
            let currentQuestion = questions[index]
            question = currentQuestion.text
            answers = currentQuestion.answers
        }
    }
    
//  func selectAnswer(answer: Answer){
//      answerSelected = true
//      if answer.isCorrect{
//          score += 1
//      }
//  }
    
}
