//
//  ContentView.swift
//  LigneVerte
//
//  Created by MacBookGP on 24/03/2020.
//  Copyright © 2020 MacBookGP. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var pageFirst = false
    
    var body: some View {
            
        Button(action: { self.pageFirst = true
        }) { HStack {
                Circle()
               .frame(width: 50.0, height: 50.0)
               .foregroundColor(Color.pink)
               Circle()
               .frame(width: 50.0, height: 50.0)
               .foregroundColor(Color.green)
               Text("Ligne Verte")
               .font(.largeTitle)
               .foregroundColor(Color.green)
            }
        }.sheet(isPresented: self.$pageFirst) {
            NavigationView {
                    AppView()
            }
 
            }
        }
    }
        
        
 



 struct SecondContentView: View {
    var body: some View {

            AppView()
        }

    }


 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
