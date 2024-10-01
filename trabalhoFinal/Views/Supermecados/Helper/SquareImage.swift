//
//  SquareImage.swift
//  trabalhoFinal
//
//  Created by coltec on 11/06/24.
//

import SwiftUI

struct SquareImage: View {
    
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .clipShape(Rectangle())
            .overlay{
                Rectangle().stroke(.white, lineWidth: 10)
                .cornerRadius(10)
                
            }
            .cornerRadius(10)
            .shadow(radius: 3)
            .frame(width: 200, height: 200)
        
            
    }
}


#Preview {
    SquareImage(image: Model().markets[0].image)
}
