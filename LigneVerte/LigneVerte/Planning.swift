//
//  Planning.swift
//  LigneVerte
//
//  Created by MacBookGP on 26/03/2020.
//  Copyright © 2020 MacBookGP. All rights reserved.
//
import SwiftUI

struct Planning: View {

  //  @Binding  var buttonReturn: Bool
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
     @State private var retour = false

    var body: some View {


            
    ZStack {
                Image("nuages_rossa").resizable() .edgesIgnoringSafeArea(.all) // image de fond
            VStack{
                
        /*
                HStack { //   Flèche retour

                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "chevron.left")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:20, height:20)
                                .foregroundColor(.black)
                    }

                            Spacer()
                }.padding()
        */
                Text("Diminuer votre consomation")
                    .font(.title)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
            
                Spacer()
                    .frame(width: 0.0, height: 40.0)
                Text("De combien de cigarettes voulez vous diminuer votre consommation hebdomadaire ?")
                    .font(.system(size: 22))
                    .frame(height: 100.0)
                  //       Intégrer le cercle de selection
                ZStack {
                    Circle()
                        .stroke(Color(red: 1, green: 1, blue: 1, opacity: 0.7), lineWidth: 3)
                        .frame(width:100, height: 100)
                    Circle()
                    .fill(Color(red: 0.6, green: 0.6, blue: 0.6, opacity: 0.4))
                    .frame(width:95, height: 95)
                ScrollView (.horizontal) {
                   HStack(spacing: 73) {
                    ForEach(0..<71) {
                        Text("\($0)")
                            .fontWeight(.light)
                            .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 1.0))
                               .font(.system(size: 59))
                            .lineLimit(1)
                            .frame(width: 80, height: 80)
                    }
                        Spacer()
                                       .frame(height: 70.0)
                    }
                   }
                }
                .padding(.top, 20.0)
                    Spacer()
                .frame(height: 100.0)
                    Text("Combien de mois ?").font(.system(size: 25))
                    .lineLimit(1)
                Spacer() .frame(width:40, height:40)
                ZStack {
                       Circle()
                           .stroke(Color(red: 1, green: 1, blue: 1, opacity: 0.7), lineWidth: 3)
                           .frame(width:100, height: 100)
                       
                       Circle()
                       .fill(Color(red: 0.6, green: 0.6, blue: 0.6, opacity: 0.4))
                       .frame(width:95, height: 95)
                   ScrollView (.horizontal) {
                      HStack(spacing: 73) {
                       ForEach(0..<21) {
                           Text("\($0)")
                               .fontWeight(.light)
                               .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 1.0))
                                  .font(.system(size: 59))
                               .lineLimit(1)
                               .frame(width: 80, height: 80)
                       }
                        
                       }
                      }
                  }
   
                //      Flèche validation
                
                HStack{

                       Button(action: {
                           self.presentationMode.wrappedValue.dismiss()
                       }) {
                        
                        VStack {
                            Spacer() .frame(width:50, height:50)
                            Image("coche")
                        .resizable()
                        .frame(width:60, height:60)
                        .foregroundColor(.black)
                         } }
                }.padding(.top, 20.0)

            }
        .padding()
            }
        }
        

        
    }
    
    
   /**
     var body: some View {
     ZStack {
     Image("nuages_rossa").resizable().edgesIgnoringSafeArea(.all).opacity(0.4)
     Text("View Planning")
     }
     
     }
     */
 

struct Planning_Previews: PreviewProvider {
    static var previews: some View {
        Planning()
    }
}
