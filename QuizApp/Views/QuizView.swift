//
//  QuizView.swift
//  QuizApp
//
//  Created by Иван Соловьев on 26.04.2024.
//

import SwiftUI

struct QuizView: View {
    @ObservedObject var controller: QuizController
    
    init(){
        let arr: [Question] = [
            Question(topic:"Top1", id: 0, text: "Hello", correctAnswer: 0, answers:[
                Answer(text: "Ans1", isCorrect: true),
                Answer(text: "Ans2", isCorrect: false),
                Answer(text: "Ans3", isCorrect: false),
                Answer(text: "Ans4", isCorrect: false)
            ]),
            Question(topic:"Top2", id: 0, text: "Hello1", correctAnswer: 0, answers:[
                Answer(text: "!!Ans1", isCorrect: true),
                Answer(text: "Ans2", isCorrect: false),
                Answer(text: "Ans3", isCorrect: false),
                Answer(text: "Ans4", isCorrect: false)
            ]),
            Question(topic:"Top3", id: 0, text: "Hello2", correctAnswer: 0, answers:[
                Answer(text: "__Ans1", isCorrect: true),
                Answer(text: "Ans2", isCorrect: false),
                Answer(text: "Ans3", isCorrect: false),
                Answer(text: "Ans4", isCorrect: false)
            ])
            
        ]
        self.controller = QuizController(questions: arr)
    }
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Text("Quiz Game Topic")
                        .font(.title2)
                        .bold()
                    Spacer()
                    Text("\(controller.index + 1) out of \(controller.length)")
                        .fontWeight(.heavy)
                }
                
                Spacer()
                VStack(alignment: .leading, spacing: 20){
                    Text(self.controller.question)
                        .font(.system(size: 25))
                        .bold()
                    Spacer()
                        .frame(height: 10)
                    
                    ForEach(self.controller.answers){ ans in
                        AnswerRow(text: ans.text)
                    }
                    
                    
                }
                
                Spacer()
                HStack{
                    Button(action: {
                    }) {
                        NavigationLink(destination: OpeningView()) {
                            MainButton(text: "Список тем")
                        }
                    }
                    .disabled(false)
                    Button {
                        self.controller.goToNextQuestion()
                    } label: {
                        MainButton(text: "Далее")
                    }
                    .disabled(false)
                }
                
                Spacer()
            }
            .padding()
            .navigationBarHidden(true)
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    QuizView()
}
