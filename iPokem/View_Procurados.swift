//
//  View_Procurados.swift
//  iPokem
//
//  Created by Vitor Lopes on 31/07/25.
//
import SwiftUI
struct Procurados: View {
    @State var refreshScreen = false
    var body: some View {

        VStack {

            
/* /*Botao Atualiza - inicio*/            Button(action :{
                refreshScreen = true
            }, label : {
                Text ("Atualizar Lista")
                    .frame(width: 250, height: 20)
                    .foregroundColor(.yellow)
                    .background(.red)
                    .cornerRadius(20)
 /*Botao Atualiza - Fim*/           }) */
            
            Text("Os Procurados").font(.system(size: 30)).frame(width: 250, height: 30)
                .foregroundColor(.yellow)
                .background(.gray)
                .cornerRadius(20)
                .padding()
            
            ScrollView(.vertical, showsIndicators: true) {
                if refreshScreen {
                    let grupos = stride(from: 0, to: procurados.count, by: 3).map {
                        Array(procurados[$0 ..< min($0+3, procurados.count)])
                    }
                    
                    VStack {
                        ForEach(grupos.indices, id: \.self) { grupoIndex in
                            HStack {
                                ForEach(grupos[grupoIndex], id: \.id) { procurado in
                                    VStack {
                                        if !procurado.hunted {
                                            Text("??").font(.system(size: 10)).frame(width: 90, height: 15)
                                                .foregroundColor(.white).background(Color.gray).cornerRadius(2)
                                        } else {
                                            Text(procurado.name).font(.system(size: 10)).frame(width: 90, height: 15)
                                                .foregroundColor(.blue).background(Color.yellow).cornerRadius(3)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                else {
                    let grupos = stride(from: 0, to: procurados.count, by: 3).map {
                        Array(procurados[$0 ..< min($0+3, procurados.count)])
                    }
                    ForEach(grupos.indices, id: \.self) { grupoIndex in
                        HStack {
                            ForEach(grupos[grupoIndex], id: \.id) { procurado in
                                VStack {
                                    if !procurado.hunted {
                                        Text("??").font(.system(size: 10)).frame(width: 90, height: 15)
                                            .foregroundColor(.white).background(Color.gray).cornerRadius(5)
                                    } else {
                                        Text(procurado.name).font(.system(size: 10)).frame(width: 90, height: 15)
                                            .foregroundColor(.blue).background(Color.yellow).cornerRadius(5)
                                    }
                                }
                            }
                        }
                    }
                    /*Termina o Else*/           }
                
            }
            
        }.onAppear() {
            refreshScreen = true
            refreshScreen = false
            
        }
    }
}

    #Preview {
        Procurados()
    }
