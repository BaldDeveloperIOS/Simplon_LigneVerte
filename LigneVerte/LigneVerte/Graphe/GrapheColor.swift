//
//  GrapheColor.swift
//  LigneVerte
//
//  Created by MacBookGP on 27/03/2020.
//  Copyright © 2020 MacBookGP. All rights reserved.
//

import SwiftUI

struct GrapheColor: View {
    
    @State var nbSemaine: Int = 0
    @State var dataSmoke: [[CGFloat]] = [
        [20, 20, 40, 60, 20, 40, 00],
        [00, 20, 20, 00, 60, 00, 00],
        [20, 20, 20, 20, 20, 20, 40]
    ]
    
    var body: some View {
        ZStack {
            Image("nuages_cian").resizable().edgesIgnoringSafeArea(.all).opacity(0.6)
            VStack {
                
                Picker(selection: $nbSemaine, label: Text("")) {
                    Text("1").tag(0)
                    Text("2").tag(1)
                    Text("3").tag(2)
                }.pickerStyle(SegmentedPickerStyle())
                    .padding(.horizontal, 24)
                
                HStack (spacing: 10) {
                    BarVertical(cigaretteInferieur: dataSmoke[nbSemaine][0], daySemaine: "Lu")
                    BarVertical(cigaretteInferieur: dataSmoke[nbSemaine][1], daySemaine: "Ma")
                    BarVertical(cigaretteInferieur: dataSmoke[nbSemaine][2], daySemaine: "Me")
                    BarVertical(cigaretteInferieur: dataSmoke[nbSemaine][3], daySemaine: "Je")
                    BarVertical(cigaretteInferieur: dataSmoke[nbSemaine][4], daySemaine: "Ve")
                    BarVertical(cigaretteInferieur: dataSmoke[nbSemaine][5], daySemaine: "Sa")
                    BarVertical(cigaretteInferieur: dataSmoke[nbSemaine][6], daySemaine: "Di")
                   
                }.padding(.top, 24).animation(.default)
            }
        }
    }
}


struct BarVertical: View {

    var cigaretteInferieur: CGFloat
    var daySemaine: String
    
    var body: some View {
        VStack {
             ZStack (alignment: .bottom){
                 Capsule().frame(width: 30, height: 200).foregroundColor(Color.gray)
                 Capsule().frame(width: 30, height: cigaretteInferieur).foregroundColor(Color.green)
                Text("\(Int(cigaretteInferieur)/20)")
             }
             .frame(width: 48.0)
             Text("\(daySemaine)").font(.footnote).foregroundColor(Color.black)
         }
    }
}

struct GrapheColor_Previews: PreviewProvider {
    static var previews: some View {
        GrapheColor()
    }
}
