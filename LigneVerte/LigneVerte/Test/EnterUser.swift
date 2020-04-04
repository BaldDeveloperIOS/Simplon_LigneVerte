//
//  EnterUser.swift
//  LigneVerte
//
//  Created by MacBookGP on 24/03/2020.
//  Copyright © 2020 MacBookGP. All rights reserved.
//

import SwiftUI

struct User : View {

    var name: String
    var mail: String
    
   @Binding var dataUser: String

    var body: some View {

        HStack {
            Text(name)
            TextField("data", text: $dataUser)
        }
    }
}



struct EnterUser: View {
    
    @State private var name : String = ""
    @State private var mail : String = ""
    
    var body: some View {
        ZStack {
            VStack {
         //       User(name: name, mail: mail, dataUser: $name)
    

                HStack {
                    Text("Name")
                    // User(stringToEdit: $name)
                    TextField("Enter name", text: $name)
                }
                HStack {
                    Text("Email")
                    TextField("Enter Email", text: $mail)
                }
            }
 
          
        }.padding()
 
    }
}

struct EnterUser_Previews: PreviewProvider {
    static var previews: some View {
        EnterUser()
    }
}
