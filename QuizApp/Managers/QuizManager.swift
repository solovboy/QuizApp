//
//  QuizManager.swift
//  QuizApp
//
//  Created by Иван Соловьев on 14.05.2024.
//

import Foundation

protocol QuizManagerProtocol {
    func loadQuiz() -> [Topic]?
}

final class MockQuizFileManager: QuizManagerProtocol {
    let scandinavian : [Question] = [
        Question(
            text: "Hello",
            correctAnswer: 0,
            answers: [
                Answer(text: "Ans1", isCorrect: true),
                Answer(text: "Ans2", isCorrect: false),
                Answer(text: "Ans3", isCorrect: false),
                Answer(text: "Ans4", isCorrect: false),
            ]
        ),
        Question(
            text: "Hello2",
            correctAnswer: 0,
            answers: [
                Answer(text: "!!!Ans1", isCorrect: true),
                Answer(text: "!!!Ans2", isCorrect: false),
                Answer(text: "!!!Ans3", isCorrect: false),
                Answer(text: "!!!Ans4", isCorrect: false),
            ]
        ),
        Question(
            text: "Hello3",
            correctAnswer: 0,
            answers: [
                Answer(text: "____Ans1", isCorrect: true),
                Answer(text: "____Ans2", isCorrect: true),
                Answer(text: "____Ans3", isCorrect: true),
                Answer(text: "____Ans4", isCorrect: true),
            ]
        )
    
    ]
    
    let greek : [Question] = [
        Question(
            text: "Hello",
            correctAnswer: 0,
            answers: [
                Answer(text: "Ans1Greek", isCorrect: true),
                Answer(text: "Ans2Greek", isCorrect: false),
                Answer(text: "Ans3Greek", isCorrect: false),
                Answer(text: "Ans4Greek", isCorrect: false),
            ]
        ),
        Question(
            text: "Hello2",
            correctAnswer: 0,
            answers: [
                Answer(text: "!!!Ans1Greek", isCorrect: true),
                Answer(text: "!!!Ans2Greek", isCorrect: false),
                Answer(text: "!!!Ans3Greek", isCorrect: false),
                Answer(text: "!!!Ans4Greek", isCorrect: false),
            ]
        )
    ]
    
    func loadQuiz() -> [Topic]? {
        let mockTopic: [Topic] = [
            Topic(text: "Скандинавия", questions: self.scandinavian),
            Topic(text: "Греческая", questions: self.greek),
            Topic(text: "Египетская", questions: [])
        ]
        return mockTopic
    }
    
    
}
