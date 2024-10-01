//
//  RegistroRow.swift
//  trabalhoFinal
//
//  Created by coltec on 27/06/24.
//

import SwiftUI

struct RegistroRow: View {
    @State var registro: Registro
    
    var onDelete: () -> Void
    
    var body: some View {
        HStack{
            
            
            HStack {
                    
                Text(registro.nome)
                    .foregroundColor(.black)
            } //hstack
            Spacer()
            Button(){
                onDelete()
            } label: {
                Image(systemName: "trash")
                    .foregroundColor(.red)
                    .accessibilityLabel("Botão para apagar o item na lista")
            }//button
        }
        .padding(.leading, 60)
        .padding(.trailing, 60)
        .padding(5)
    }
}

#Preview {
    RegistroRow(registro: Registro(id: 1, nome: "arroz")){}
}
