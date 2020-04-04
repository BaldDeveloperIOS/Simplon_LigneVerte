//
//  Palmares.swift
//  LigneVerte
//
//  Created by MacBookGP on 26/03/2020.
//  Copyright © 2020 MacBookGP. All rights reserved.
//

import SwiftUI

struct Palmares2: View {
    
    @State var stopDay: Int = 6
    @State var nbNoSmoke: Int = 10
    
    var body: some View {

            ZStack {
                       Image("nuages_rossa").resizable().edgesIgnoringSafeArea(.all).opacity(0.4)
                       
                       VStack {
                           Text("Mon palmarès")
                               .fontWeight(.semibold)
                            .padding(.bottom, 40.0)
                               .font(.title)
                           Text("Plus que \(stopDay) jours avant la prochaine médaille")
                           
                           HStack {
                               ZStack {
                                   Circle().stroke(Color(red: 0, green: 0 , blue: 0, opacity: 0.7), lineWidth: 3)
                                       .frame(width:30, height: 30)
                                   Image("").offset(x: 1, y: 6)
                                       .font(.largeTitle)
                               }
                              .padding()
                               Text("3/15 cigarettes en moins durant 1 mois ")
                           }
                           
                           HStack {
                               ZStack {
                                   Circle().stroke(Color(red: 0, green: 0 , blue: 0, opacity: 0.7), lineWidth: 3)
                                       .frame(width:30, height: 30)
                                   Text("*").offset(x: 1, y: 6)
                                   .font(.largeTitle)
                               }.padding()
                               Text("7/15 cigarettes en moins durant 2 mois")
            
                           }
                           GraphePalmares()
                           .padding()
                        VStack {
                            Text("Cigarettes non fumées")
                                .fontWeight(.semibold)
                                .padding()
                            Text("\(nbNoSmoke)").padding()
                        }
                        .padding(.bottom, 50.0)
                           
                        Spacer()

                       }
            }
    }
}

struct GraphePalmares2: View {
    var body: some View {
        HStack {
            /**
             Partie correspondnant a la place numero 1
             */
            VStack{
                ZStack {
                    Circle()
                        .stroke(Color(red: 0, green: 0, blue: 0, opacity: 0.1),lineWidth: 3).frame(width:120, height: 120)
                    Image("icons8-médaille-d'or-olympique-96")
                }
                Text("1 er mois")
            }.offset(x: 20, y: 40)
            
            
            /**
             Partie correspondant a la coupe du 2 eme mois
             */
            VStack {
                ZStack {
                    Circle()
                        .stroke(Color(red: 0, green: 0, blue: 0, opacity: 0.1),lineWidth: 3)
                        .frame(width:200, height: 200)

                    Image("icons8-trophée-100").resizable().frame(width: 160.0, height: 160.0)
                    
                }.offset(x: 0, y: -40)
                Text("2 e")
                Text("mois")
            }
            
            /**
             Partie concernant le 3eme mois. une coupe
             */
            VStack {
                ZStack {
                    Circle()
                        .stroke(Color(red: 0, green: 0, blue: 0, opacity: 0.1),lineWidth: 3).frame(width:120, height: 120)
                    Image("icons8-couronne-de-laurier-150").resizable()
                        .frame(width: 120.0, height: 120.0)
                }
                Text("3eme")
            }.offset(x: -20, y: 40)
        }.padding(.top, 40.0)
        
    }
}

struct Palmares2_Previews: PreviewProvider {
    static var previews: some View {
        Palmares2()
    }
}
