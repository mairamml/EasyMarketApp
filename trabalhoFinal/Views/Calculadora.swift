//
//  Calculadora.swift
//  trabalhoFinal
//
//  Created by coltec on 04/06/24.
//

import SwiftUI

struct Calculadora: View {
    
    @State var pesoString1: String = ""
    @State var precoString1: String = ""
    @State var pesoString2: String = ""
    @State var precoString2: String = ""
    @State var mensagem: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        VStack {
            Text("Comparador de Preços")
                .font(.largeTitle)
                .foregroundColor(.corPrincipal)
                .bold()
            
            Text("Vamos ver qual produto compensa mais")
                .font(.subheadline)
                .padding(.bottom)
            
            Text("Produto 1")
                .foregroundColor(.corPrincipal)
                .font(.title3)
                .bold()
            HStack{
                VStack{
                    Text("Peso")
                        .foregroundColor(.azulMedio)
                        .padding()
                        .bold()
                    TextField("em gramas", text: $pesoString1)
                        .padding()
                        .frame(width: 150)
                        .border(.black, width: 0.3)
                        .accessibilityLabel("Campo para digitar o peso do produto 1")
                }//vstack peso
                VStack{
                    Text("Preço")
                        .foregroundColor(.azulMedio)
                        .padding()
                        .bold()
                    TextField("em R$", text: $precoString1)
                        .padding()
                        .frame(width: 150)
                        .border(.black, width: 0.3)
                        .accessibilityLabel("Campo para digitar o preço do produto 1")
                }//vstack preco 1
            }//hstack produto 1
            
            Text("Produto 2")
                .foregroundColor(.corPrincipal)
                .font(.title3)
                .bold()
                .padding(.top)
            HStack{
                VStack{
                    Text("Peso")
                        .foregroundColor(.azulMedio)
                        .padding()
                        .bold()
                    TextField("em gramas", text: $pesoString2)
                        .padding()
                        .frame(width: 150)
                        .border(.black, width: 0.3)
                        .accessibilityLabel("Campo para digitar o peso do produto 2")
                }//vstack peso
                VStack{
                    Text("Preço")
                        .foregroundColor(.azulMedio)
                        .padding()
                        .bold()
                    TextField("em R$", text: $precoString2)
                        .padding()
                        .frame(width: 150)
                        .border(.black, width: 0.3)
                        .accessibilityLabel("Campo para digitar o preço do produto 2")
                }//vstack preco
            }//hstack produto 2
            
            Button("Calcular") {
                
                let resultado1 = (Double(pesoString1)!/Double(precoString1)!)
                let resultado2 = (Double(pesoString2)!/Double(precoString2)!)
                
                if(resultado1>resultado2){
                    mensagem = "Produto 1 está compensando mais"
                }else if(resultado2>resultado1){
                    mensagem = "Produto 2 está compensando mais"
                }else{
                    mensagem = "Os dois tem o mesmo custo benefício"
                }
                self.showAlert = true
            }//botao
            .padding()
            .buttonStyle(.bordered)
            .accessibilityLabel("Botão para calcular")
        }//Vstack maior de todas
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("🧮"),
                message: Text(mensagem)
                    .accessibilityLabel(mensagem),
                dismissButton: .default(Text("OK"))
            )
            
        }
    
    }
}

#Preview {
    Calculadora()
}
