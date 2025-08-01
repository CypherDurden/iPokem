//
//  ContentView.swift
//  iPockemon
//
//  Created by Vitor Lopes on 29/07/25.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
     TabView {
    
            Pokebola()
                .tabItem {
                    Label(
                        title: { Text("Pokebola") },
                        icon: { Image(systemName: "cricket.ball") }
                    )
                }
            Pokedex()
                .tabItem {
                    Label(
                        title: { Text("Pokedex") },
                        icon: { Image(systemName: "keyboard.onehanded.right.fill") }
                    )
                }
         Procurados()
             .tabItem {
                 Label(
                     title: { Text("Procurados") },
                     icon: { Image(systemName: "person.3") }
                 )
             }

        }
    }
}


#Preview {
    ContentView()
    }

