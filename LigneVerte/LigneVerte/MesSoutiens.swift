//
//  MesSoutiens.swift
//  LigneVerte
//
//  Created by MacBookGP on 26/03/2020.
//  Copyright © 2020 MacBookGP. All rights reserved.
//

import SwiftUI

struct VideoSoutiens: Identifiable {
    var id = UUID()
    var videoSoutiens: String
}


struct VideoView: View {
    
    var postVideo: VideoSoutiens
    
    var body: some View {
        Image(postVideo.videoSoutiens)
        .padding()
        .frame(width: 230.0, height: 300.0)
    }
}





struct MesSoutiens: View {
    
    @State private var page2MesSoutiens = false
    @State private var pageMailMesSoutiens = false
    
    var videoMesSoutiens = [
        VideoSoutiens(videoSoutiens: "PhotoVideo2"),
        VideoSoutiens(videoSoutiens: "PhotoVideo3"),
        VideoSoutiens(videoSoutiens: "PhotoVideo5")
    ]
    
    var body: some View {
        ZStack {
        Image("nuagesRoses").resizable().edgesIgnoringSafeArea(.all).opacity(0.9)
            VStack {
                HStack {
                    Text("Mes soutiens")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .font(.title)
                }
                .padding(.bottom, 30.0)
                HStack {
                    Spacer().frame(width: 18.0, height: 300.0)
                    
                    ScrollView (.horizontal ) {
                        HStack(spacing: 20) {
                            ForEach( videoMesSoutiens, id: \.id) {
                                post in VideoView(postVideo: post)
                            }
               //  Liens Video avec une URL d'internet           Webvideo(url:"https://ak9.picdn.net/shutterstock/videos/1024767479/preview/stock-footage-hands-of-a-woman-cutting-a-cigarette-in-two-halves-with-scissors-stop-smoking-concept.mp4")
                        }
                    }
                }.padding(.vertical, 50.0)
                        
                VStack {
                    

                    Button(action: {
                        self.page2MesSoutiens = true
                        }) {
                            VStack {
                                Text("Annoncer mon engagement")
                                Text("à de nouveaux contacts")
                            }
                            .padding()
                            .padding([.horizontal], 50)
                            .background(Color(red: 200/255, green: 103/255, blue: 200/255, opacity: 0.25))
                            .foregroundColor(.black)
                    }.sheet(isPresented: self.$page2MesSoutiens) {
                        Page2MesSoutiens()
                    }
                }
                .padding(.bottom, 100.0)
            }
        Spacer()
       }
    }
}


/**
 struct View represantant la  2 eme  interface de mes soutiens
 */
struct Page2MesSoutiens: View {
    /*
     Varaibale d'Environement pour le retour a l'interface prescedente
     */
        @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
 
        ZStack {
            /*
             Fond d'ecran complet de l'interface
             */
            Image("nuagesRoses").resizable().edgesIgnoringSafeArea(.all).opacity(0.6)
            VStack {
            
        /*        HStack {
                    /**
                     Image correspondnant a la fleche retour
                     */
                    Group {
                        Image(systemName: "chevron.left")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width:20, height:20)
                        /**
                            Action d'un bourton pour retourner sur l'interface prescedent
                         */
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            Text("    ") // text qui simule le bouton
                        }
                    }
                    Spacer()
                }.padding()
        */
                /**
                 Affichage du texte principale de l'interface
                 */
                HStack {
                                   Text("Mes soutiens")
                                       .fontWeight(.semibold)
                                       .multilineTextAlignment(.center)
                                       .font(.title)
                               }
  

                Text("Annoncez votre engagement à de nouveaux contacts")
                    .multilineTextAlignment(.leading)
                    .padding([.top, .trailing], 30.0)
                    .lineLimit(100)

                VStack {
                    VStack {
                        
                            Image(systemName: "envelope" )
                                .resizable()
                                .frame(width: 60.0, height: 40.0)
                                .padding()
                        }
                        Text("-------------------------------")
                        Image("icons8-facebook-96")
                }.padding(.vertical, 100.0)

                    Text("En annonçant votre engagement envers des personnes de confiance, vous augmentez vos chances de réussite")
                        .padding(.bottom, 100.0)
                }
                Spacer()
            }
    }
}




struct MesSoutiens_Previews: PreviewProvider {
    static var previews: some View {
        MesSoutiens()
    }
}
