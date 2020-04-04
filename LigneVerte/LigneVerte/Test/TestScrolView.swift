//
//  TestScrolView.swift
//  LigneVerte
//
//  Created by MacBookGP on 26/03/2020.
//  Copyright © 2020 MacBookGP. All rights reserved.
//

import SwiftUI

struct TestScrolView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 20) {
                ForEach(0..<10) {
                    Text("Item \($0)")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .frame(width: 200, height: 200)
                        .background(Color.red)
                }
            }
        }
    }
}

struct TestScrolView_Previews: PreviewProvider {
    static var previews: some View {
        TestScrolView()
    }
}
