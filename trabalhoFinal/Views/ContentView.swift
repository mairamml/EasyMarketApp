//
//  ContentView.swift
//  trabalhoFinal
//
//  Created by coltec on 21/05/24.
//

import SwiftUI

struct ContentView: View {
    @State private var subirSupermercado = false
    var body: some View {
        NavigationView {
            VStack{
                Image(systemName: "cart")
                    .padding(.top, 10.0)
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .tint(Color.corPrincipal)
                    .font(.system(size: 50))
                
                Text("EasyMarket")
                    .font(.title)
                    .padding(.bottom, 50)
                    .bold()
                    .foregroundStyle(Color.corPrincipal)
                
                HStack{
                    //lista de compras
                    NavigationLink(destination:ListaCompras()){
                        
                    }.buttonStyle(BotaoStyle(background: Color.corPrincipal, pressedBackground: Color.azulClaro, text: "Lista de compras"))
                    
                    
                    //calculadora
                    NavigationLink(destination:Calculadora()){
                        
                    }.buttonStyle(BotaoStyle(background: Color.azulMedio, pressedBackground: Color.azulClaro, text: "Calculadora"))
                    
                    
                }//hstack
                
                HStack{
                    //historico de gastos
                    NavigationLink(destination:Historico()){
                        
                    }.buttonStyle(BotaoStyle(background: Color.azulMedio, pressedBackground: Color.azulClaro, text: "Histórico de Gastos"))
                    
                    
                    //supermecados
                    Button{
                        subirSupermercado.toggle()
                    }label: {
                        
                    }.buttonStyle(BotaoStyle(background: Color.corPrincipal, pressedBackground: Color.azulClaro, text: "Supermecados próximos"))
                        .sheet(isPresented: $subirSupermercado){
                            MarketList()
                        }
                    
                }//hstack
                
            }//vstack
        }//navigation
    }//body
}//view

#Preview {
    ContentView()
        .environment(Model())
}
