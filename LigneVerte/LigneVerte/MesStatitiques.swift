//
//  MesStatitiques.swift
//  LigneVerte
//
//  Created by MacBookGP on 26/03/2020.
//  Copyright © 2020 MacBookGP. All rights reserved.
//

import SwiftUI

struct MesStatitiques: View {
    
    @State var dayEnd:Int = 6
    
    var body: some View {
        

        ZStack {
            Image("nuages_cian").resizable().edgesIgnoringSafeArea(.all)
            ScrollView(.vertical) {
                Spacer()
                Text("Bilan hebdomadaire")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding(.vertical, 50.0)
                VStack {
                        Text("La santé est un marathon")
                            .font(.title)
                            .fontWeight(.regular)
                            .padding(.trailing, 55.0)
                        Text("Encore \(dayEnd) jours avant la fin de votre programme")
                            .padding(.vertical, 20.0)
                    GrapheCircle()
                        .padding(.vertical, 20.0)
                }.padding(.vertical, 20.0)
                Spacer()
                VStack(alignment: .leading) {
                    Text("Evolution de votre consommation")
                        .font(.custom("", size: 24.0))
                        .fontWeight(.regular)
                        .multilineTextAlignment(.leading)
                
                    Text("Semaine 1 sur 3")
                        .multilineTextAlignment(.leading)
                        .padding(.vertical, 20.0)
                }
                .padding(.trailing, 9.0)
                .frame(height: nil)
                VStack {
                    GrapheColor()
                        .padding(.bottom, 10.0)

                }.padding(.top).frame(height: 400.0)

                VStack(alignment: .leading) {
                   
                    HStack {
                        Rectangle()
                            .frame(width: 20.0, height: 20.0)
                            .foregroundColor(Color.green)
                        Text("Nombre de cigarette en moins (Par rapport à la consommation habituelle)")
                            .padding([.top, .bottom, .trailing], 10.0)
                    }
                    .padding(.leading)
                    HStack {
                        Rectangle()
                            .frame(width: 20.0, height: 20.0)
                            .foregroundColor(Color.gray)
                        Text("Consommation habituelle")
                            .padding(.vertical, 10.0)
                    }
                    .padding(.leading)
                }
                .padding(.bottom, 100.0)
                Spacer()
        }
            
        }    //  .navigationBarTitle(Text("Mes Statistiques"))
        .edgesIgnoringSafeArea(.all)
 
    }
}


struct MesStatitiques_Previews: PreviewProvider {
    static var previews: some View {
        MesStatitiques()
    }
}
