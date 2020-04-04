//
//  Palmares.swift
//  LigneVerte
//
//  Created by MacBookGP on 26/03/2020.
//  Copyright © 2020 MacBookGP. All rights reserved.
//

import SwiftUI

struct Palmares: View {
    
    @State private var stopDay: Int = 9
    @State var noSmoke: Int = 3
    @State private var noSmokeMons: Int = 7
    @State private var maxSmoke: Int = 15
    
    var body: some View {
        
        ZStack {
            Image("mesPalmares").resizable() .edgesIgnoringSafeArea(.all) .opacity(0.5)
            
            VStack {
                Text("Mon palmarès")
                    .fontWeight(.semibold)
                    .padding(.bottom, 15.0)
                    .font(.title)
                
                Text("Plus que \(stopDay) jours avant le prochain titre")
                    .font(.custom("title", size: 16))  .multilineTextAlignment(.leading).opacity(0.8)   .padding(20)
                
                HStack {
                    ZStack {
                        Circle().stroke(Color(red: 0, green: 0 , blue: 0, opacity: 0.7), lineWidth: 3)
                            .frame(width:25, height: 25)
                        Image("coche").resizable().frame(width:20, height: 20)

                    }
                   .padding(10)
                    Text("\(noSmoke) cigarettes en moins par semaine / 1 mois ")
                }
                
                HStack {
                    ZStack {
                        Circle().stroke(Color(red: 0, green: 0 , blue: 0, opacity: 0.7), lineWidth: 3)
                            .frame(width:25, height: 25)
                //        Image("coche").resizable().frame(width:20, height: 20)
                        .font(.largeTitle)
                    }.padding(.trailing, 10.0)
                    Text("\(noSmokeMons) cigarettes en moins par semaine / 2 mois")
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
  
                }
                GraphePalmares()
                .padding()
                Text("Total cigarettes non fumées")
                    .fontWeight(.semibold)
                    .padding(20)
               
                ZStack {
                    
                    
                    
                    Rectangle() .stroke(Color(red: 0, green: 0, blue: 0, opacity: 0.9),lineWidth: 3)
                    .frame(width:24, height: 30)
                    
                    Rectangle() .stroke(Color(red: 0, green: 0, blue: 0, opacity: 0.9),lineWidth: 3)
                               .frame(width:70, height: 30)
                
                Text("0  3  7")
                                .font(.custom("title", size: 23))

                    .fontWeight(.bold) }
            Spacer().frame(width:20, height: 80)}
            
            
        }
       
    }
}

struct GraphePalmares: View {
    var body: some View {
        HStack {
            VStack{
                ZStack {
                    Circle()
                        .stroke(Color(red: 0, green: 0, blue: 0, opacity: 0.1),lineWidth: 3).frame(width:120, height: 120)
                    Image("medaille")
                }
                Text("1 er mois")
            }.offset(x: 20, y: 40) .opacity(0.7)
            
            
            /**
             Partie correspondant a la coupe du 2 eme mois
             */
            VStack {
                ZStack {
                    Circle()
                        .stroke(Color(red: 0, green: 0, blue: 0, opacity: 0.1),lineWidth: 3)
                        .frame(width:200, height: 200)

                    Image("palmares2")
                    .resizable()
                        .frame(width: 250.0, height: 250.0)
                        .opacity(1.0)
                    
                }.offset(x: 0, y: -0)
                Text("2e mois")            .font(.custom("title", size: 23))

                Text("")             .font(.custom("title", size: 20))

                
            }
            
            /**
             Partie concernant le 3eme mois. une coupe , une medaille ou une couronne
             */
            VStack {
                ZStack {
                    Circle()
                        .stroke(Color(red: 0, green: 0, blue: 0, opacity: 0.1),lineWidth: 3).frame(width:120, height: 120)
                    
                    Image("laurier")
                    
                }
                Text("3e mois")
            }.offset(x: -20, y: 40) .opacity(0.5)
 
  
        }.padding(.top, 15.0)
        
    }
}


struct Palmares_Previews: PreviewProvider {
    static var previews: some View {
        Palmares()
    }
}
