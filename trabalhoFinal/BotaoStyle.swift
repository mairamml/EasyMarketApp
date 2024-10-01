//
//  BotaoStyle.swift
//  trabalhoFinal
//
//  Created by coltec on 04/06/24.
//

import SwiftUI

struct BotaoStyle: ButtonStyle {
    let background: Color
    let pressedBackground: Color
    let text: String
    
    func makeBody(configuration: Configuration) -> some View {
        VStack {
            ZStack {
                Rectangle()
                    .foregroundColor(configuration.isPressed ? pressedBackground : background)
                    .opacity(1)
                    Text(text)
                    .bold()
                .foregroundColor(.white)
            }
            .frame(width: 150, height: 85, alignment: .center)
            .cornerRadius(6)
            .multilineTextAlignment(TextAlignment.center)
            .accessibilityLabel("Botão para ir para tela de \(text)")
        }
        .animation(.none, value: configuration.isPressed)
    }
}


