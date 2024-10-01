//
//  trabalhoFinalApp.swift
//  trabalhoFinal
//
//  Created by coltec on 21/05/24.
//

import SwiftUI

@main
struct trabalhoFinalApp: App {
    @State private var model = Model()
    var body: some Scene {
        
            WindowGroup {
                
                SplashView()
                    .environment(model)
                
            }
        }
}
