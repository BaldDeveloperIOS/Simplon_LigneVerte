//
//  TestModalView.swift
//  LigneVerte
//
//  Created by MacBookGP on 30/03/2020.
//  Copyright © 2020 MacBookGP. All rights reserved.
//

import SwiftUI

struct TestModalView: View {
     @State private var hasTitle = true
       var body: some View {
           NavigationView {
               NavigationLink("Go", destination:
                   Text("Details")
                       .onAppear {
                           self.hasTitle = false
                       }
                       .onDisappear {
                           self.hasTitle = true
                       }
               )
               .navigationBarTitle(self.hasTitle ? "Master" : "")
           }
       }
        
        
        
        
        
        
        
        
        
        /*
        Button(action: {self.showModal = true }) {
            Text("Show modal")
        }.sheet(isPresented: self.$showModal) {
            PageModal()
        }
      */
    
}


struct PageModal: View {
    var body: some View {

        NavigationView{
            Text("coucou")
            
        }.navigationBarTitle(Text("return"))
    }
    
}

struct TestModalView_Previews: PreviewProvider {
    static var previews: some View {
        TestModalView()
    }
}
