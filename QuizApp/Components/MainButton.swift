//
//  MainButton.swift
//  QuizApp
//
//  Created by Иван Соловьев on 26.04.2024.
//

import SwiftUI

struct MainButton: View {
    var text: String
    var background: Color = .gray
    var body: some View {
        Text(text)
            .foregroundColor(.black)
            .bold()
            .frame(maxWidth: 200,maxHeight: 40, alignment: .center)
            .background(background)
            .cornerRadius(30)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
    
}

#Preview {
    MainButton(text: "Скандинавская")
}
