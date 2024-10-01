//
//  MarketList.swift
//  trabalhoFinal
//
//  Created by coltec on 11/06/24.
//

import SwiftUI

struct MarketList: View {
    
    @Environment(Model.self) var model
    
    var body: some View {
        NavigationSplitView{
            List{
                ForEach(model.markets){ market in
                    NavigationLink{
                        MarketDetalhe(market: market)
                    } label: {
                        MarketRow(market: market)
                            .accessibilityLabel("Botão para acessar as informações de: \(market.nome)")
                    }
                }
            }
            .navigationTitle("Supermercados")
            .accessibilityLabel("Lista para seleção de supermecados")
            } detail: {
                Text("Selecione o supermercado")
                    
            }
        
    }
}

#Preview {
    MarketList()
        .environment(Model())
}
