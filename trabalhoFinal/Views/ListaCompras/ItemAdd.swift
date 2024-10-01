//
//  ItemAdd.swift
//  trabalhoFinal
//
//  Created by coltec on 25/06/24.
//

import SwiftUI

struct ItemAdd: View {
    let onAdd: (String) -> Void
    @State private var text: String = ""
    
    func clique(){
        if text.trimmingCharacters(in: .whitespaces).isEmpty{
            return
        }
        onAdd(text)
        text = ""
    }
    
    var body: some View {
        HStack{
            TextField("Insira o item", text: $text)
                .padding(10)
                .textFieldStyle(.roundedBorder)
                .shadow(radius: 5)
                .accessibilityLabel("Campo para adicionar o item")
            
            Button(action: clique){
                Text("Adicionar")
                    .foregroundColor(.corPrincipal)
                    .bold()
                    .accessibilityLabel("Botão para adicionar o item na lista")
            }
            .padding()
        }//hstack
    }
}

#Preview {
    ItemAdd(onAdd: {string in "Item"})
}
