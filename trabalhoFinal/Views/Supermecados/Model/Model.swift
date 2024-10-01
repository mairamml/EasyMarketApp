//
//  Model.swift
//  trabalhoFinal
//
//  Created by coltec on 11/06/24.
//

import Foundation


@Observable
class Model{
    var markets: [Market] = load("supermercados.json")
}


func load<T:Decodable>(_ filename:String) -> T{  //Generics
    
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("Arquivo \(filename) não encontrado")
    }
    do{
        data = try Data(contentsOf: file)
    } catch{
        fatalError("Não foi possível ler o arquivo \(filename)")
    
    }
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    
    }catch{
        fatalError("Não foi possível decodificar o arquivo \(filename)")
    }
}
