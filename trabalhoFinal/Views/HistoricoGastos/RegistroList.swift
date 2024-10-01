//
//  RegistroList.swift
//  trabalhoFinal
//
//  Created by coltec on 27/06/24.
//

import SwiftUI

struct RegistroList: View {

    @State var registros: [Registro] = []
    
    func adicionar(name: String){
        registros.append(Registro(id: Int.random(in: 1...100), nome: name))
    }
    
    func delete(id: Int){
        registros.removeAll{$0.id == id}
    }
    
    var body: some View {
        ScrollView{
            RegistroAdd(onAdd: adicionar)
                .padding()
            ForEach(registros) { registro in
                RegistroRow(registro: registro, onDelete: {delete(id: registro.id)})
                
            }
            .focusable(true)
        }//scrollview
    }
}

#Preview {
    RegistroList()
}
