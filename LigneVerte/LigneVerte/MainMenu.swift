//
//  MainMenu.swift
//  LigneVerte
//
//  Created by MacBookGP on 25/03/2020.
//  Copyright © 2020 MacBookGP. All rights reserved.
//

import SwiftUI

struct MainMenu: View {

    @State private var  programmeArret = false
    @State private var  statistiques = false
    @State private var  stopSmoke = false
    @State private var nbCigarette: Int = 6

    
   var body: some View {

            ZStack {
                Image("nuages_cian").resizable().edgesIgnoringSafeArea(.all).opacity(0.4)
          //      Spacer()
                VStack {
                    HStack { // Entête de la page Principale
                        Text("Prenez le contrôle de votre consomation de tabac")
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                            .padding(.top, -100.0)
                    }
                    HStack {
                        ZStack {
                            Image("nuages_rossa")
                                .resizable()
                                .frame(width: 390.0, height: 90.0)
                                .opacity(0.9)
                            Button(action: { self.programmeArret = true
                            }) { Text("Programmer la diminution de ma consomation").foregroundColor(Color.black).padding()
                            }.sheet(isPresented: self.$programmeArret)  {
                                Planning()
                               //  ProgrammeStop()
                            }
                        }
                    }
                    
                    HStack { // Partie sur le bilan Hebdomadaire
                        
                        ZStack {
                          Image("nuages_cian")
                                .resizable()
                                .frame(width: 390.0, height: 200.0)
                                .opacity(1)
                            Button(action: { self.statistiques = true
                            }) {
                                VStack {
                                    Text("Bilan hebdomadaire").multilineTextAlignment(.center)

                                    Text("\(nbCigarette)").font(.title).multilineTextAlignment(.center).padding(.vertical)
                                    Text("Cigarettes non-fumées").multilineTextAlignment(.trailing).padding(.top)
                                   }.foregroundColor(.black)
                            }.sheet(isPresented: self.$statistiques) {
                                MesStatitiques()
                            }
                        }
                    }
                    HStack { // partie sur les stats d'une semaine
                        ZStack {
                            Image("nuages_cian")
                            .resizable()
                            .frame(width: 300.0, height: 100.0)
                            .opacity(1)
                            Semaine()
                        }
                        ZStack{
                            Image("nuages_cian")
                            .resizable()
                            .frame(width: 80.0, height: 100.0)
                            .opacity(1)
                           Fume()
                        }
                    }
                    
                    HStack { // Derniére partie sur une aide et des conseils pour arreter de la cigarette
                        ZStack {
                            Image("nuages_verts")
                            .resizable()
                            .frame(width: 390.0, height: 100.0, alignment: .center)
                            .opacity(0.8)
                            Button(action: { self.stopSmoke = true
                            }) { Text("Mes raisons d'arrêter la cigarette").foregroundColor(.black)

                            }.sheet(isPresented: self.$stopSmoke) {
                                StopCigarette()
                            }
                        }
                     }

                }
            }
        
    }
}


// méthode sur la gestion de 1 er partie de la page Principale
struct ProgrammeStop: View {
    @State private var hasTitle = true
    var body: some View {
        NavigationView {
            
        NavigationLink(" Go",destination: Planning().onAppear {
            self.hasTitle = false }
            .onDisappear {
                self.hasTitle = true
        }).navigationBarTitle(self.hasTitle ? "Diminution de ma consommation" : "")
            // Text("Programmer la diminution de ma consomation").foregroundColor(Color.black).padding()
        }.buttonStyle(PlainButtonStyle())
    }
    
}


// méthode sur le bilan hebdomadaire
struct BilanHebdo: View {
       
    @State var nbCigarette: Int = 6
    
    var body: some View {
        NavigationLink(destination: MesStatitiques()) {
        VStack {
            Text("Bilan hebdomadaire").multilineTextAlignment(.center)

            Text("\(nbCigarette)").font(.title).multilineTextAlignment(.center).padding(.vertical)
            Text("Cigarettes non-fumées").multilineTextAlignment(.trailing).padding(.top)
        }.foregroundColor(.black)
        }
    }
}

// methode sur les details et le liens sur la semaine
struct Semaine: View {
    
    @State private var nbSemaine: Int = 3
    
    var body: some View {

            HStack {
                VStack {
                    Text("Semaine")
                    Spacer()
                        .frame(height: 34.0)
                    Text("\(nbSemaine)").font(.title)
                }
                .padding(.trailing, 50.0)
                VStack {
                    Text("Semaine")
                    Text("réussie")
                    Image("sunColor").resizable().frame(width: 40.0, height: 40.0)
                }
            }
    }
}




// methode des raison d'arreter la cigarette
struct ArretCigarette: View {
    var body: some View {
        ZStack {
            Image("nuages_verts").resizable().edgesIgnoringSafeArea(.all).opacity(0.4)
            
            NavigationLink(destination: StopCigarette()) {
                Text("Mes raisons d'arrêter la cigarette").foregroundColor(.black)

            }
        }
    }
}




struct Fume: View {
    
    @State private var smoke = false
    
    
    var body: some View {
        HStack {
                  VStack {
                           Button(action: { self.smoke = true
                           }) {  VStack {
                                                  Text("J\'ai")
                                                  Text("fumé")
                                                      
                                              }.foregroundColor(Color.black)
                           }.sheet(isPresented: self.$smoke) {
                               DayCigarette()
                           }
                               Image("thunderstorm").resizable().frame(width: 40.0, height: 40.0).opacity(10)
                       }
                   }
    }
}




 
 /*
struct Semaine_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
        Image("nuages_cian")
        .resizable()
        .frame(width: 300.0, height: 200.0)
        .opacity(1)
        Semaine()
        }
    }
}
*/


struct MainMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu()
    }
}

