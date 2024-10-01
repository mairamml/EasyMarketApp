import SwiftUI

struct Historico: View {
    
    @State private var adicionaDado: String = ""
    @State private var historico: [String] = []
    //@State private var index: Int
    @State private var data = Date.now
    @State private var gasto: Double = 0.0
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Histórico de Gastos")
                    .font(.largeTitle)
                    .foregroundColor(.corPrincipal)
                    .bold()
                
                Text("Anote aqui para não esquecer nada!")
                    .font(.subheadline)
                    .foregroundColor(.black)
                Divider()
                RegistroList()
                Divider()
                }
            }
    }
}



#Preview {
    Historico()
}

