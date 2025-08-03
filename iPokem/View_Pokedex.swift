//
//  Pokedex.swift
//  iPockemon
//
//  Created by Vitor Lopes on 29/07/25.
//

import SwiftUI

struct Pokedex: View {
    @State var searchText: String = ""
    @State var catchedPoke : PokemonApi?
    @State var entrada : String = ""
    @State var pokemonPokedex: PokemonApi?
    @State var estaNaPokedex : Bool = false
    @State var contaConsulta = 0
    var body: some View {
        VStack (spacing: 40){
            
            Text("Consulta os Pokemons na Pokedex").font(.system(size: 22, weight: .medium ))
            HStack {
                TextField("", text: $entrada).frame(width: 300, height: 50, alignment: .center).background(.gray.opacity(0.2)).cornerRadius(20)
            }
            Button(action :{
                estaNaPokedex = false
                contaConsulta += 1
                pokemonPokedex = procuraNaPokedex(entrada)
                if (pokemonPokedex != nil) {
                    estaNaPokedex = true
                }
                print("Status para \(entrada)")
                print("Está na Pokedex: \(estaNaPokedex)")
                contaConsulta += 1
            }, label : {
                Text ("Consultar")
                    .frame(width: 250, height: 50)
                    .foregroundColor(.yellow)
                    .background(.red)
                    .cornerRadius(20)
            })
            Text("Informações do Pokemon:")
            
            ScrollView(.vertical, showsIndicators: true) {
                VStack {
                    ScrollView(.vertical, showsIndicators: true) {
                    }
                    if estaNaPokedex {
                        
                        
                        HStack {
                            VStack (spacing: 15){
                                HStack {
                                    AsyncImage(url: URL(string: pokemonPokedex?.sprites.frontDefault ?? "")) { image in
                                        image
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                    } placeholder: {
                                        RoundedRectangle(cornerRadius: 20)
                                            .foregroundColor(.secondary)
                                    }
                                    .frame(width: 150, height: 150)
                                    
                                    AsyncImage(url: URL(string: pokemonPokedex?.sprites.backDefault ?? "")) { image in
                                        image
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                    } placeholder: {
                                        RoundedRectangle(cornerRadius: 20)
                                            .foregroundColor(.secondary)
                                    }
                                    .frame(width: 150, height: 150)
                                }
                                
                                
                                //Text("PokeID:")
                                if entrada == "??" {
                                    Text("Você encontrou ??").bold()
                                    Text("Elu não é Pokemon. Ninguém sabe o que elu é")
                                    Text("Não sabemos sequer se é Elu")
                                    Text("O que sabemos é que ")
                                    Text("não gosta de ser encontrado...").bold()
                                    Text("De qualquer forma...Parabéns.")
                                    Text("Agora é só aguentar as consequências").bold()
                                    Text("da sua curiosidade, tenha um bom dia!").bold()
                                    
                                }
                                Text("PokeID: \(pokemonPokedex!.id)").bold()
                                Text("Nome: \(pokemonPokedex!.name)").bold()
                                Text("Peso: \(pokemonPokedex!.weight)").bold()
                                Text("Altura: \(pokemonPokedex!.height)").bold()
                                Text("Ordem: \(pokemonPokedex!.order)").bold()
                                
                            }
                            
                        }
                        
                        if (contaConsulta > 0 && !estaNaPokedex || (pokemonsApi.count == 0 && contaConsulta > 0 )) {
                            Text("Suposto Pokemon NÃO está na Pokedex")
                            
                        }
                    }
                    /* fim VStack Info*/            }
            }
        }
    
    }
}
        
#Preview {
    Pokedex()
            
        }
func procuraNaPokedex(_ name : String) -> PokemonApi? {
        var pokemonApiReturned : PokemonApi? = nil
        for i in 0 ... pokemonsApi.count - 1 {
            if pokemonsApi[i].name == name.lowercased(){
                pokemonApiReturned = pokemonsApi[i]
                break
            }
        }
        return pokemonApiReturned
    }
    



