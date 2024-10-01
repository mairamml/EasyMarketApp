//
//  RegistroAdd.swift
//  trabalhoFinal
//
//  Created by coltec on 27/06/24.
//

import SwiftUI

struct RegistroAdd: View {
    let onAdd: (String) -> Void
    @State private var text: String = ""
    @State private var data = Date.now
    
    func clique(){
        if text.trimmingCharacters(in: .whitespaces).isEmpty{
            return
        }
        text = "R$" + text + " - " + data.formatted(date: .long, time: .omitted)
        onAdd(text)
        text = ""
    }
    
    var body: some View {
        VStack{
            DatePicker(selection: $data, in: ...Date.now, displayedComponents: .date){
                Text("Selecione a data")
                    
            }
            .padding(6)
            .accessibilityLabel("Campo para selecionar a data")
            HStack{
                TextField("Registre o valor das compras", text: $text)
                    .keyboardType(.numbersAndPunctuation)
                    .padding(10)
                    .textFieldStyle(.roundedBorder)
                    .shadow(radius: 5)
                    .accessibilityLabel("Campo para digitar o valor da compra")
                
                Button(action: clique){
                    Text("Adicionar")
                        .foregroundColor(.corPrincipal)
                        .bold()
                        .accessibilityLabel("Botão para adicionar o valor e a data na lista")
                    
                }
                .padding()
            }//hstack
        }
    }
}

#Preview {
    RegistroAdd(onAdd: {string in "Registro"})
}

