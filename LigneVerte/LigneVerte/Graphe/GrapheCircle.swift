//
//  GrapheCircle.swift
//  LigneVerte
//
//  Created by MacBookGP on 27/03/2020.
//  Copyright © 2020 MacBookGP. All rights reserved.
//

import SwiftUI

struct GrapheCircle: View {
    
    @State var pourcent: Int = 95 // % du nombre de cigarette non fummée par rapport a l'ojectif
    @State var nbJour: Int = 19 // nombre de jour non fumé
    @State var nbJourMax: Int = 21  // Nombre max de jour de l'objectif a faire
    @State var nbNoSmoke: Int = 18  //  nombre de cigarette non fumé
    @State var nbJourRestant: Int = 20
    
   
    var body: some View {
        ZStack {
          //   Image("nuages_cian").resizable()   .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    ZStack {
                        Circle().fill(Color(red: 119/255, green: 200/255, blue: 180/255, opacity: 0.5))
                         .frame(width:95, height: 95)
                        Circle().stroke(Color(red: 1, green: 1, blue: 1, opacity: 0.7), lineWidth: 3)
                        .frame(width:95, height: 95)
                        VStack {
                            Text("\(nbJour) / \(nbJourMax)")
                            Text("Jours")
                            Text("Réussis")
                        }
                    }
                    ZStack {
                        Circle().fill(Color(red: 119/255, green: 200/255, blue: 180/255, opacity: 0.5))
                         .frame(width:150, height: 150)
                        Circle()
                            .stroke(Color(red: 1, green: 1, blue: 1, opacity: 0.7), lineWidth: 3).frame(width:150, height: 150)
 
                        VStack {
                            Text("Réussi a")
                            Text("\(pourcent) % ")
                        }
                    }.offset(x: -7, y: -5)
                }
                .padding(.leading, 136.0)
                HStack {
                    ZStack {
                        Circle().fill(Color(red: 119/255, green: 200/255, blue: 180/255, opacity: 0.5))
                         .frame(width:150, height: 150)
                        Circle().stroke(Color(red: 1, green: 1, blue: 1, opacity: 0.7), lineWidth: 3)
 
                     .frame(width:150, height: 150)
                            VStack {
                                Text("\(nbNoSmoke)")
                                Text("Cigarettes")
                                Text("non fumées")
                            }
                        }.offset(x: 6, y: 4)
                    ZStack {
                        Circle().fill(Color(red: 119/255, green: 200/255, blue: 180/255, opacity: 0.5))
                         .frame(width:95, height: 95)
                        Circle().stroke(Color(red: 1, green: 1, blue: 1, opacity: 0.7), lineWidth: 3)
                        .frame(width:95, height: 95)
                        VStack {
                            Text("Jour")
                            Text("\(nbJourRestant)")
                        }
                    }

                }
                .padding([.bottom, .trailing], 93.0)
                .frame(height: 100.0)
            }.padding(.trailing, 20.0)

        }
        
    }
}

struct GrapheCircle_Previews: PreviewProvider {
    static var previews: some View {
        GrapheCircle()
    }
}
