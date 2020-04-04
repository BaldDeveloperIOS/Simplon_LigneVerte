//
//  ConseilDuJour.swift
//  Ligne Verte
//
//  Created by EL ABOUYI on 25/03/2020.
//  Copyright © 2020 AFP. All rights reserved.
//

import SwiftUI

struct ConseilDuJour: View {
    
    var title : String = "Conseil du jour"
    
    var tipOfTheDay : String = "Pour connaître le nombre idéal de cigarettes à diminuer de votre consommation,  visualisez lesquelles sont 100% faciles à amputer à votre routine."
    
    var body: some View {
       ZStack {
            Image("image-conseils-du-jour")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .opacity(0.8)
            VStack  {
                Text("\(title)")
                    .fontWeight(.regular)
                    .font(.title)
                    .font(.custom("title", size: 26))
                    .multilineTextAlignment(.center)
                    .padding(.top, -255.0)
                    .frame(height:-12.0)
                Text("\(tipOfTheDay)")
                    .fontWeight(.light)
                    .italic()
                    .foregroundColor(Color(red: 0.1, green: 0.1, blue: 0.1, opacity: 0.7))
                    .font(.system(size: 23))
                    .multilineTextAlignment(.center)

                    .padding(.horizontal, 20.0)
                    
                    
                    
        /*
                    .italic()
                    .fontWeight(.light)
                 //   .font(.body)

 
                 //   .font(.headline)
                 //   .fontWeight(.light)

                    .foregroundColor(Color(red: 25/255, green: 25/255, blue: 32/255))
                    .multilineTextAlignment(.center)
                    .lineLimit(7)
                    .padding(.horizontal)
                    .lineSpacing(7)
 */
            }
        }
    }
}

struct ConseilDuJour_Previews: PreviewProvider {
    static var previews: some View {
        ConseilDuJour()
    }
}
