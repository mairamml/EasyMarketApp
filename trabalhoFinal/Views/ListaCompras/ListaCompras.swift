//
//  ListaCompras.swift
//  trabalhoFinal
//
//  Created by coltec on 18/06/24.
//

import SwiftUI

struct ListaCompras: View {
    @State private var adicionaDado: String = ""
    @State private var itens: [String] = []
    //@State private var index: Int
    
    var body: some View {
        
        NavigationView {
            VStack {
                Text("Lista de Compras")
                    .font(.largeTitle)
                    .foregroundColor(.corPrincipal)
                    .bold()
                
                Text("Anote aqui para não esquecer nada!")
                    .font(.subheadline)
                    .foregroundColor(.black)
                Divider()
                ItemList()
                Divider()
                }
            }
            
            
                
        }
    }


#Preview {
    ListaCompras()
}
