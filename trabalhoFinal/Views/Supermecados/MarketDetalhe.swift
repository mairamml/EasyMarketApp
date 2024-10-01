//
//  MarketDetale.swift
//  trabalhoFinal
//
//  Created by coltec on 11/06/24.
//

import SwiftUI

struct MarketDetalhe: View {
    
    @Environment(Model.self) var model
    var market: Market
    var marketIndex: Int{
        model.markets.firstIndex(where: {$0.id == market.id})!
    }
    
    var body: some View {
        
        @Bindable var model = model
        
        ScrollView {
            VStack{
                
                SquareImage(image: market.image)
                    .padding()
                
                VStack(alignment: .center){
                    HStack{
                        Text(market.nome)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                            .foregroundColor(.corPrincipal)
                            .accessibilityLabel(market.nome)
                        

                    }
                    
                    Divider()
                    
                    VStack{
                        Text("Informações")
                            .font(.title2)
                            .foregroundColor(.azulMedio)
                            .bold()
                            .accessibilityLabel("Informações de endereço e contato")
                        Spacer()
                        Text(market.endereco)
                            .accessibilityLabel(market.endereco)
                        Text(market.telefone)
                            .accessibilityLabel(market.telefone)
                    }
                    .padding()
                    
                    Divider()
                    
                    VStack{
                        Text("Horário de Funcionamento")
                            .font(.title2)
                            .foregroundColor(.azulMedio)
                            .bold()
                            .accessibilityLabel("Horário de funcionamento")
                        Spacer()
                        Text(market.horario_funcionamento)
                            .multilineTextAlignment(.center)
                            .font(.subheadline)
                            .accessibilityLabel(market.horario_funcionamento)
                    }
                    .padding()
                    
                    Divider()
                    
                    VStack{
                        Text("Localização")
                            .font(.title2)
                            .foregroundColor(.azulMedio)
                            .bold()
                            .padding(.bottom)
                            .accessibilityLabel("Localização")
                        Spacer()
                        MapView(coordinate: market.locationCoordinate)
                            .clipShape(Rectangle())
                            .cornerRadius(10)
                            .shadow(radius: 3)
                            .frame(width: 300, height: 200)
                            .accessibilityLabel("Mapa mostrando a localização")
                    }
                    .padding()
                    
                    
                    
                }
            }//Vstack externa
        }//scroll
        
        
        
    }
    
}


#Preview {
    let model = Model()
    return MarketDetalhe(market: Model().markets[0])
        .environment(model)
}
