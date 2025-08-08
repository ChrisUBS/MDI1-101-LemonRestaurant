//
//  AboutView.swift
//  LemonRestaurant
//
//  Created by Christian Bonilla on 05/08/25.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        NavigationView {
            VStack{
                Text("Welcome to Little Lemon!")
                    .font(.title)
                    .padding()
                Image("littleLemonLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
            }
            .navigationTitle(Text("About Us"))
        }
    }
}

#Preview {
    AboutView()
}
