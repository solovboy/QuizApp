//
//  ResultView.swift
//  QuizApp
//
//  Created by Иван Соловьев on 14.05.2024.
//

import SwiftUI

struct ResultView: View {
    @Environment(\.dismiss) private var dismiss
    
    @EnvironmentObject var navigation: QuizeNavigation
    
    let score: Int
    let length: Int
    var body: some View {
        VStack(spacing: 20){
            Spacer()
            Text("Викторина по Мировым мифологиям")
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
            Text("Поздравляем вы завершили викторину!")
                .font(.title2)
                .multilineTextAlignment(.center)
            Spacer()
            Text("Вы набрали \(score) из \(length) очков")
                .font(.title3)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
            Spacer()
            Button(action: {
                self.navigation.isShow.toggle()
            }) {
                MainButton(text: "Список тем")
            }
            Spacer()
        }
        .foregroundColor(Color(.black))
        .padding()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .navigationBarHidden(true)
        .onChange(of: self.navigation.isShow, { oldValue, newValue in
            self.dismiss()
        })
    }
}


#Preview {
    return ResultView(score: 3, length: 10)
}
