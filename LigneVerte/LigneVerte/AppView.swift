//
//  AppView.swift
//  LigneVerte
//
//  Created by MacBookGP on 26/03/2020.
//  Copyright © 2020 MacBookGP. All rights reserved.
//

import SwiftUI

// partie sur la TabBar sur la page principal
struct AppView: View {
    
    init() {
        //  UITabBar.appearance().backgroundImage = UIImage()
    }
    
    var body: some View {

        TabView {
        NavigationView {
             MainMenu() // bouton de la tabBar sur l'acceuil
        }
        .tabItem({
                   // Image("icons8-book-stack-50")
                    Image(systemName: "book.fill")
                    Text("Accueil")
                })
        NavigationView {
            Palmares() // bouton sur la tabBar de Palmarés
        }
        .tabItem({
                    // Image("icons8-médaille-de-bronze-olympique-50")
                      Image(systemName: "rosette")
                    Text("Palmarès")
            })
        NavigationView {  // bouton de la tabBar sur la santé
            ConseilDuJour()
        }
        .tabItem({
                   // Image("icons8-lumière-allumée/Users/macbookgp/Documents/Swift/SwiftUI/Exo/LigneVerte/LigneVerte/AppView.swift-48")
                       Image(systemName: "lightbulb.fill")
                    Text("Conseil du jour")
                })
            NavigationView {
                 MesSoutiens() // bouton de la tabBar sur les soutiens
            }
            .tabItem({
                   //  Image("icons8-friends-50").resizable().frame(width: 40.0, height: 40.0)
                      Image(systemName: "person.3.fill")
                    Text("Mes soutiens")
            })
        }.accentColor(.blue)
        
    }
}

struct AppView_Previews: PreviewProvider {
 
    
    static var previews: some View {
        AppView()
    }
}
