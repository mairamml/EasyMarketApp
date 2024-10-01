//
//  SplashView.swift
//  trabalhoFinal
//
//  Created by coltec on 18/06/24.
//

import SwiftUI

struct SplashView: View {
    @State var isActive : Bool = false
       @State private var size = 0.8
       @State private var opacity = 0.5
       
       // Customise your SplashScreen here
    var body: some View {
        ZStack{
            
            Color.escuro
                .ignoresSafeArea()
            
            if isActive {
                ContentView()
            } else {
                VStack {
                    VStack {
                        Image(systemName: "cart.circle.fill")
                            .font(.system(size: 80))
                            .foregroundColor(.corPrincipal)
                        Text("EasyMarket")
                            .font(Font.custom("Inter", size: 40))
                            .foregroundColor(.white.opacity(0.80))
                        
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.2)) {
                            self.size = 0.9
                            self.opacity = 1.00
                        }
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
            }
        }
    }
    
    
}

#Preview {
    SplashView()
}
