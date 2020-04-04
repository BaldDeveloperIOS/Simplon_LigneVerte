//
//  StopCigarette.swift
//  LigneVerte
//
//  Created by MacBookGP on 30/03/2020.
//  Copyright © 2020 MacBookGP. All rights reserved.
//

import SwiftUI

struct StopCigarette: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var message = ""
    
    var title : String = "Mes raisons d'arrêter de fumer"
    var whyStop : String = "Arrêter de brûler mon argent"
    var texteRaison = "Je veux me sentir beau et en forme"
    var texteRaison2 = "Pouvoir m'affirmer et montrer que j'en suis capable"
    var listeStop = (
    "Me sentir moins dependant, économiser mon argent, avoir un meuilleur sommeil, revenir à une vie normal")
    
    var body: some View {
        ZStack {
                  Image("nuages_verts")
                          .resizable()
                          .edgesIgnoringSafeArea(.all)
                          .opacity(0.9)
      VStack  {

        

 /*
        /**
         button pour la fleche de retour de la vue si besoin
         */
        HStack{
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
            }.padding(30)
 */
     
        
        Spacer()
          .frame(width: 0.0, height: 120.0)
          Text("\(title)")
              .font(.custom("title", size: 26))
              .fontWeight(.heavy)
              .multilineTextAlignment(.center)
              .padding(.top, -75.0)
   
        HStack {
                        
                        Image(systemName: "circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:07, height:7)
                            .padding()
                        
                        Text("\(texteRaison)") .fontWeight(.light)
                            .foregroundColor(Color(red: 25/255, green: 25/255, blue: 32/255, opacity: 0.9))
                            .font(.system(size: 17)) .italic()
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .lineLimit(5)
                        .lineSpacing(7)
              Spacer()
              
          } .padding(14)
         
          
          HStack {
                              
                              Image(systemName: "circle.fill")
                                  .resizable()
                                  .aspectRatio(contentMode: .fill)
                                  .frame(width:7, height:7)
                                  .padding()
                              
                              Text("\(texteRaison2)") .fontWeight(.light)
                              .foregroundColor(Color(red: 0.1, green: 0.1, blue: 0.1, opacity: 0.9))
                                  .font(.system(size: 17)) .italic()
                              
                              
                              
                            
                              .fontWeight(.regular)
                               .foregroundColor(Color(red: 25/255, green: 25/255, blue: 32/255, opacity: 0.8))
                                .multilineTextAlignment(.leading)
                              .lineLimit(5)
                              .lineSpacing(7)
              Spacer()  }.padding(14)
          
          HStack {
                  
                  Image(systemName: "circle.fill")
                      .resizable()
                      .aspectRatio(contentMode: .fill)
                      .frame(width:07, height:7)
                      .padding()
                  
                  Text("\(whyStop)") .fontWeight(.light)
                    .foregroundColor(Color(red: 25/255, green: 25/255, blue: 32/255, opacity: 0.9))
                                             .font(.system(size: 17)) .italic()
                                         
                                         
                                         
                                       
                                         .fontWeight(.regular)
                                             .foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 1.0))
                                         .multilineTextAlignment(.center)
                                         .lineLimit(5)
                                         .lineSpacing(7)
                               Spacer()
                }
          .padding(12)
         
        /**
            texte a rentrer
         */
        
        HStack(alignment: .top) {
                         
                         Image(systemName: "circle.fill")
                             .resizable()
                             .aspectRatio(contentMode: .fill)
                             .frame(width:07, height:7)
                             .padding()
                         
            TextField("Ajouter une nouvelle raison", text: $message)
                .opacity(0.8)
                .padding(.vertical, 10.0)
                .background(Color.white)
                .opacity(0.8)
            }
                 .padding(12)
              
              
            Spacer()
                 HStack{
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        VStack {
                            Image("coche")
                                .resizable()
                                .frame(width:60, height:60)
                                .foregroundColor(.black)
                        }
                    }.padding(.top, 100.0)
                }
            Spacer()
      }
 
                       
    }
    }
}
               
            
            
            
            
            
            
            
            
    /*
            
            Image("nuages_verts").resizable().edgesIgnoringSafeArea(.all).opacity(0.6)
            
            Text("Mes raisons d'arrêter la cigarette").foregroundColor(.black)
            List() {
                ZStack {
                    Image("nuages_verts").resizable().edgesIgnoringSafeArea(.all).opacity(0.6)
                                
                     Text("\(listeStop)")
                }
                ZStack {
                    Image("nuages_verts").resizable().edgesIgnoringSafeArea(.all).opacity(0.6)
                                
                     Text("\(listeStop)")
                }
                ZStack {
                    Image("nuages_verts").resizable().edgesIgnoringSafeArea(.all).opacity(0.6)
                                
                     Text("\(listeStop)")
                }
                ZStack {
                    Image("nuages_verts").resizable().edgesIgnoringSafeArea(.all).opacity(0.6)
                                
                     Text("\(listeStop)")
                }
                ZStack {
                    Image("nuages_verts").resizable().edgesIgnoringSafeArea(.all).opacity(0.6)
                                
                     Text("\(listeStop)")
                }
 
            }
            
   */
            




struct StopCigarette_Previews: PreviewProvider {
    static var previews: some View {
        StopCigarette()
    }
}
