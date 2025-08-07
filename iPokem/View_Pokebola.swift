//
//  Pokebola.swift
//  iPockemon
//
//  Created by Vitor Lopes on 29/07/25.
//
import Foundation
import SwiftUI


struct Pokebola: View {
    @State var catchedPoke : PokemonApi?
    @State var entrada : String = ""
    @State var processaEntrada = ""
    @State var pokemonApi : PokemonApi?
    @State var ehPokemon : Bool = true
    @State var ehProcurado : Bool = false
    @State var estaNaPokedex : Bool = false
    @State var contaCassa = 0

    
    var body: some View {
        VStack {

            Text("Comece aqui sua caça ao Pokemon").font(.system(size: 22, weight: .medium ))
            HStack {
                TextField("", text: $entrada).frame(width: 300, height: 50, alignment: .center).background(.gray.opacity(0.2)).cornerRadius(20)
            }
            Button(action :{
                
                if contaCassa == 0 {
                    pokemonsApi.append(pokEasterEgg)
                    procuraPokemonProcurado("??")
                    
                }
                processaEntrada = entrada
                ehPokemon = true
                ehProcurado = false
                estaNaPokedex = false
                ehProcurado = procuraPokemonProcurado(processaEntrada.lowercased())
                estaNaPokedex = procuraPokemonPokedex(processaEntrada.lowercased())
                
                Task {
                    do{
                        pokemonApi = try await getPokemonApi(entrada)
                        if (ehProcurado && !estaNaPokedex) {
                            pokemonsApi.append(pokemonApi!)
                        }} catch{
                            ehPokemon = false
                        }
                
                    }
                contaCassa += 1
/*
                print("Status para \(processaEntrada)")
                print("É Pokemon: \(ehPokemon)")
                print("É Procurado: \(ehProcurado)")
                print("Já na Pokedex: \(estaNaPokedex)")
*/
            }, label : {
                    Text ("Caçar")
                        .frame(width: 150, height: 50)
                        .foregroundColor(.yellow)
                        .background(.red)
                        .cornerRadius(20)
                    
                })
            if !ehPokemon {
                Image("faustaoError").resizable().frame(width: 200, height: 200)
                Text("Esse Pokemon NÃO existe")
            }
            
            if (contaCassa > 0) && ehPokemon && !ehProcurado {
                AsyncImage(url: URL(string: pokemonApi?.sprites.backDefault ?? "")) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                } placeholder: {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.secondary)
                }
                .frame(width: 150, height: 150)
                
                Text("Esse Pokemon existe mas não é procurado")
            }
            
            if ehPokemon && ehProcurado && !estaNaPokedex {
                AsyncImage(url: URL(string: pokemonApi?.sprites.frontDefault ?? "")) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                } placeholder: {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.secondary)
                }
                .frame(width: 150, height: 150)
            ScrollView(.vertical, showsIndicators: true) {
                Text("Parabéns!").bold()
        //        Text("")
                Text("Capturou um Pokemon Procurado!")
          //      Text("")
                Text("\nConsulte sua Pokedex para")
                Text("mais informações sobre o \(processaEntrada).")
                Text("\nAtualize Procurados")
                Text("para ver o nome desbloqueado")
                }
            }
            
            if estaNaPokedex {
                
                Text("Fingirei que não vi...")
                Image("CarameloDesconfiado0\(String(Int.random(in: 1...10)))")
                    .resizable().frame(width: 200, height: 200)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("Você tentando pegar todos os")
                Text("\(processaEntrada)").bold()
                Text("Pra depois vender mais caro na Shopee")
            Text("")
                Text("Esse Pokemon já está na sua Pokedex e")
                Text("não pode ser coletado novamente")
            }
            }
            
            
            
            
            }
        }
        
    
    //johnsundell
    //torvalds
    
    func getPokemonApi(_ pokemonHunted : String) async throws -> PokemonApi {
        //   let endpoint = "https://api.github.com/users/torvalds"
        let endpoint = "https://pokeapi.co/api/v2/pokemon/" + pokemonHunted.lowercased()
        guard let url = URL(string: endpoint) else { throw GHError.invalidURL }
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw GHError.invalidResponse
        }
        
        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            return try decoder.decode(PokemonApi.self, from: data)
        } catch {
            throw GHError.invalidData
        }
    }
    
    func procuraPokemonProcurado(_ name : String) -> Bool {
        
        for i in 0 ... (procurados.count - 1) {
            if procurados[i].name == name{
                procurados[i].hunted = true
                print("\(i), \(procurados[i].name), \(procurados[i].hunted)")
                return true
            }
        }
        
        print("Veio pro false do mesmo jeito")
        return false
    }
    
    func procuraPokemonPokedex(_ name : String) -> Bool {
        for pok in pokemonsApi {
            if pok.name == name {
                return true
            }
        }
        return false
    }

    
    
    enum GHError: Error {
        case invalidURL
        case invalidResponse
        case invalidData
    }

    #Preview {
        Pokebola()
    }

