//
//  ItemList.swift
//  trabalhoFinal
//
//  Created by coltec on 25/06/24.
//

import SwiftUI

struct ItemList: View {
    @State var itens: [Item] = []
    
    func adicionar(name: String){
        itens.append(Item(id: Int.random(in: 1...100), nome: name, checked: false))
    }
    
    func delete(id: Int){
        itens.removeAll{$0.id == id}
    }
    
    var body: some View {
        ScrollView{
            ItemAdd(onAdd: adicionar)
                .padding()
            ForEach(itens) { item in
                ItemRow(item: item, onDelete: {delete(id: item.id)})
                
            }
            .focusable(true)
        }//scrollview
    }
}

#Preview {
    ItemList()
}
