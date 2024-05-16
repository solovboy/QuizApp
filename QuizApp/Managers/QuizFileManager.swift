//
//  QuizFileManager.swift
//  QuizApp
//
//  Created by Иван Соловьев on 14.05.2024.
//

import Foundation

class QuizFileManager: QuizManagerProtocol {
    func loadQuiz() -> [Topic]? {
        if let filePath = Bundle.main.path(forResource: "quiz_json", ofType: "txt") {
            do {
                let contents = try String(contentsOfFile: filePath)
                let jsonData = contents.data(using: .utf8) ?? Data()
                let topics = try JSONDecoder().decode([Topic].self, from: jsonData)
                return topics
            } catch {
                print("Ошибка чтения файла: \(error)")
            }
        } else {
            print("Файл не найден")
        }
        return nil
    }
}
