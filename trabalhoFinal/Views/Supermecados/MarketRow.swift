//
//  MarketRow.swift
//  trabalhoFinal
//
//  Created by coltec on 11/06/24.
//

import SwiftUI

struct MarketRow: View {
    var market: Market
    var body: some View {
            HStack{
                market.image
                    .resizable()
                    .frame(width: 50, height: 50)
                
                Text(market.nome)
                Spacer()
            }
        
    }
}

#Preview {
    let markets = Model().markets
    return Group{
        MarketRow(market: markets[0])
        
    }
    
}
