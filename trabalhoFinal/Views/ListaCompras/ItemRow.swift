//
//  ItemRow.swift
//  trabalhoFinal
//
//  Created by coltec on 25/06/24.
//

import SwiftUI

struct ItemRow: View {
    @State var item: Item
    var onDelete: () -> Void
    
    func clique(){
        item.checked = !item.checked
    }
    
    var body: some View {
        HStack{
            
            Button(action: clique) {
                HStack {
                    
                    if item.checked {
                        
                        Image(systemName: "multiply.square")
                            .font(.system(size: 23))
                            .foregroundColor(.corPrincipal)
                            .accessibilityLabel("Botão para desmarcar o item")
                    }else{
                        Image(systemName: "square")
                            .font(.system(size: 23))
                            .foregroundColor(.gray)
                            .accessibilityLabel("Botão marcar o item")
                    }
                    
                    Text(item.nome)
                        .foregroundColor(.black)
                } //hstack
            }//button
            Spacer()
            Button(){
                onDelete()
            } label: {
                Image(systemName: "trash")
                    .foregroundColor(.red)
                    .accessibilityLabel("Botão para apagar o item")
            }//button
        }
        .padding(.leading, 60)
        .padding(.trailing, 60)
        .padding(5)
    }
}

#Preview {
    ItemRow(item: Item(id: 1, nome: "arroz", checked: true)){}
}
