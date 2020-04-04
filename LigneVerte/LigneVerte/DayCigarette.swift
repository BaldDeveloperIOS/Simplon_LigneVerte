//
//  DayCigarette.swift
//  LigneVerte
//
//  Created by MacBookGP on 26/03/2020.
//  Copyright © 2020 MacBookGP. All rights reserved.
//

import SwiftUI


struct DayCigarette: View {
    
        @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
        
        @State private var smokedOnMonday: Bool = false
        @State private var smokedOnTuesday = false
        @State private var smokedOnWednesday = false
        @State private var smokedOnThursday = false
        @State private var smokedOnFriday = false
        @State private var smokedOnSaturday = false
        @State private var smokedOnSunday = false
        
        @State private var numberOfCigaretsMonday: Double = 0
        @State private var numberOfCigaretsTuesday: Double = 0
        @State private var numberOfCigaretsWedesney: Double = 0
        @State private var numberOfCigaretsThursday: Double = 0
        @State private var numberOfCigaretsFriday: Double = 0
        @State private var numberOfCigaretsSaturday: Double = 0
        @State private var numberOfCigaretsSunday: Double = 0
        
      //  @State private var messageBorder =
    
    var body: some View {
        ZStack {
            
        Image("nuages_cian").resizable().edgesIgnoringSafeArea(.all).opacity(0.9)
           
            ScrollView (.vertical) {
            
            VStack {
    
            /**
                 Partie du bouton pour le retour non utilisé mais preparé au cas ou
                 */
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
                      Spacer()
                      .frame(width: 0.0, height: 30.0)
                  VStack (alignment: .center)  {
                      Text("Lors de quel(s) jour(s) n'avez vous pas pu diminuer votre consommation cette semaine ?") .font(.system(size: 20)) .fontWeight(.bold)
                      .lineLimit(4)
                          .padding(20)
                      HStack {  Text("Indiquer le nombre de cigarettes consommées que vous envisagiez de ne pas fûmer") .fontWeight(.light)
                  .foregroundColor(Color(red: 0.1, green: 0.1, blue: 0.1, opacity: 0.9))
                      .font(.system(size: 14)) .italic()
                      }.padding(24)
   
                    
                    
                    
                    
                    
                    
            //Lundi
                     
                VStack {
                    Button (action: {
                        self.smokedOnMonday.toggle() }
                            )
                            {
                                HStack {
                                    
                                Text("Lundi")
                               .foregroundColor(Color.black)
                                    
                                Image(systemName: "chevron.down")
                                    .foregroundColor(.gray)
                                    
                                }.padding()
                                 .padding([.horizontal], 136)
                                .border(self.smokedOnMonday ? Color.white : Color.white.opacity(0), width: 2)

                                }
                            
                         
                         if smokedOnMonday {
                             Slider(value: $numberOfCigaretsMonday, in: 0...10, step: 1)
                                        .frame(width: 200, height: 10)
                             Text("\(Int(numberOfCigaretsMonday)) cigarette(s)")
                         }
                     }
                     
            
                     
  
                    
                    
                    
                    
                    
                    
                  // Mardi
                     VStack {
                        
                        HStack {
                            
                            Button (action: {
                                self.smokedOnTuesday.toggle() }
                                )
                            {
                                HStack {
                                    Text("Mardi  ")
                                        .foregroundColor(Color.black)
                                        
                                    Image(systemName: "chevron.down")
                                        .foregroundColor(.gray)
                                }
                            }
                        }.padding()
                        .padding([.horizontal], 136)
                        .border(self.smokedOnTuesday ? Color.white : Color.white.opacity(0), width: 2)
                        
                        
                        
                        
                        if smokedOnTuesday {
                                Slider(value: $numberOfCigaretsTuesday, in: 0...10, step: 1)
                                    .frame(width: 200, height: 10)
                                Text("\(Int(numberOfCigaretsTuesday)) cigarette(s)")
                            }
                            

                       
                     }
                    
                 // Mercredi
                    VStack {
                         Button (action: {
                                self.smokedOnWednesday.toggle() }
                                )
                            {
                                HStack {
                                    Text("Mercredi")
                                        .foregroundColor(Color.black)
                                        .foregroundColor(.gray)
                                    Image(systemName: "chevron.down")
                                          .foregroundColor(.gray)

                                } .padding()
                                 .padding(.horizontal, 123.0)
                                .border(self.smokedOnWednesday ? Color.white : Color.white.opacity(0), width: 2)
                               
                            }
                            
                         
                         if smokedOnWednesday {
                             Slider(value: $numberOfCigaretsWedesney, in: 0...10, step: 1)
                                        .frame(width: 200, height: 10)
                             Text("\(Int(numberOfCigaretsWedesney)) cigarette(s)")
                         }
                     }
                 
                     //Jeudi
                    VStack {
                         Button (action: {
                                self.smokedOnThursday.toggle() }
                                )
                                {
                                    HStack {
                                        Text("Jeudi  ")
                                            .foregroundColor(Color.black)
                                             
                                        Image(systemName: "chevron.down")
                                            .foregroundColor(.gray)
                                    }

                                }.padding()
                                .padding([.horizontal], 136)
                        .border(self.smokedOnThursday ? Color.white : Color.white.opacity(0), width: 2)
                         
                         if smokedOnThursday {
                             Slider(value: $numberOfCigaretsThursday, in: 0...10, step: 1)
                                        .frame(width: 200, height: 10)
                             Text("\(Int(numberOfCigaretsThursday)) cigarette(s)")
                         }
                     }
                     
                     //Vendredi
                     
                    VStack {
                         Button (action: {
                                self.smokedOnFriday.toggle() }
                                )
                                {
                                    HStack {
                                        Text("Vendredi ")
                                            .foregroundColor(Color.black)
                                            
                                        Image(systemName: "chevron.down")
                                            .foregroundColor(.gray)
                                    }
                                
                                }.padding()
                                     .padding([.horizontal], 123.0) .border(self.smokedOnFriday ? Color.white : Color.white.opacity(0), width: 2)
                         
                         if smokedOnFriday {
                             Slider(value: $numberOfCigaretsFriday, in: 0...10, step: 1)
                                        .frame(width: 200, height: 10)
                             Text("\(Int(numberOfCigaretsFriday)) cigarette(s)")
                         }
                     }
                     
                   //Samedi
                     
                     VStack {
                         Button (action: {
                                self.smokedOnSaturday.toggle() }
                                )
                                {
                                    HStack {
                                        Text("Samedi  ")
                                            .foregroundColor(Color.black)
                                            
                                        Image(systemName: "chevron.down")
                                            .foregroundColor(.gray)
                                    }
                                
                                }.padding()
                                .padding([.horizontal], 129.0) .border(self.smokedOnSaturday ? Color.white : Color.white.opacity(0), width: 2)
                         
                         if smokedOnSaturday {
                             Slider(value: $numberOfCigaretsSaturday, in: 0...10, step: 1)
                                        .frame(width: 200, height: 10)
                             Text("\(Int(numberOfCigaretsSaturday)) cigarette(s)")
                         }
                     }
                     
                     //Dimanche
                     
                   VStack {
                        Button (action: {
                               self.smokedOnSunday.toggle() }
                               )
                               {
                                HStack{
                                    Text("Dimanche" )
                                        .foregroundColor(Color.black)
                                        
                                    Image(systemName: "chevron.down")
                                        .foregroundColor(.gray)
                                    }
                               
                                }.padding()
                                .padding([.horizontal], 120.0) .border(self.smokedOnSunday ? Color.white : Color.white.opacity(0), width: 2)
                        
                        if smokedOnSunday {
                            Slider(value: $numberOfCigaretsSunday, in: 0...10, step: 1)
                                       .frame(width: 200, height: 10)
                            Text("\(Int(numberOfCigaretsSunday)) cigarette(s)")
                        }
                    }
                
                    Spacer()
                      .frame(width: 30.0, height: 30.0)
                }
                    
                      HStack {
                            Button(action: {
                                self.presentationMode.wrappedValue.dismiss()
                            }) {
                                Image("coche")
                                .resizable()
                                .frame(width:50, height:50)
                                .foregroundColor(.black)
                            }
                }
                
  
                
                
                
                
                
                
                
                
            }
            }
        }
    }
}

struct DayCigarette_Previews: PreviewProvider {
    static var previews: some View {
        DayCigarette()
    }
}
