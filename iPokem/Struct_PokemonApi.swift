//
//  Struct_PokemonApi.swift
//  iPokem
//
//  Created by Vitor Lopes on 31/07/25.
//

struct PokemonSprites: Decodable {
    var frontDefault: String
    var backDefault: String
}
 
struct PokemonApi: Decodable {
    var sprites: PokemonSprites
    var id: Int
    var name: String
    var weight: Int
    var height: Int
    var order: Int
    
    
}
 
