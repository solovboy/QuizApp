//
//  QuizApp.swift
//  QuizApp
//
//  Created by Иван Соловьев on 25.04.2024.
//

import SwiftUI

@main
struct QuizApp: App {
    
    let manager = QuizFileManager()
    //let manager = MockQuizFileManager()
    
    var body: some Scene {
        WindowGroup {
            //OpeningView(manager: MockQuizFileManager())
            OpeningView(manager: self.manager)
        }
    }
}
