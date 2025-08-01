//
//  View_Procurados.swift
//  iPokem
//
//  Created by Vitor Lopes on 31/07/25.
//
import SwiftUI
struct Procurados: View {
    var body: some View {
        let grupos = stride(from: 0, to: procurados.count, by: 5).map {
            Array(procurados[$0 ..< min($0+5, procurados.count)])
        }

        VStack {
            ForEach(grupos.indices, id: \.self) { grupoIndex in
                HStack {
                    ForEach(grupos[grupoIndex], id: \.id) { procurado in
                        VStack {
                            if !procurado.hunted {
                                Text("??").font(.system(size: 9)).frame(width: 60, height: 15)
                                    .foregroundColor(.white).background(Color.gray).cornerRadius(5)
                            } else {
                                Text(procurado.name).font(.system(size: 9)).frame(width: 60, height: 15)
                                    .foregroundColor(.blue).background(Color.yellow).cornerRadius(5)
                            }
                        }
                    }
                }
            }
        }
    }
}

    #Preview {
        Procurados()
    }
