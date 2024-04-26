//
//  QuizView.swift
//  QuizApp
//
//  Created by Иван Соловьев on 26.04.2024.
//

import SwiftUI

struct QuizView: View {
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Text("Quiz Game Topic")
                        .font(.title2)
                        .bold()
                    Spacer()
                    Text("\(1) out of \(15)")
                        .fontWeight(.heavy)
                }
                
                Spacer()
                VStack(alignment: .leading, spacing: 20){
                    Text("Вопрос")
                        .font(.system(size: 25))
                        .bold()
                    Spacer()
                        .frame(height: 10)
                    AnswerRow(text: "Ответ 1")
                    AnswerRow(text: "Ответ 2")
                    AnswerRow(text: "Ответ 3")
                    AnswerRow(text: "Ответ 4")
                    
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
