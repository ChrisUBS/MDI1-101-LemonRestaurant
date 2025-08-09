//
//  MainView.swift
//  LemonRestaurant
//
//  Created by Christian Bonilla on 09/08/25.
//

import SwiftUI

struct MainView: View {
    
    @State private var isLoggedIn: Bool = false
    @State private var userName: String = ""
    
    var body: some View {
        NavigationView{
            if isLoggedIn {
                VStack{
                    Text("Welcome")
                        .font(.title)
                        .padding()
                    
                    NavigationLink("Make a Reservation", destination: ReservationForm())
                        .padding()
                    NavigationLink("About Us", destination: AboutView())
                    
                    Button("Logout") {
                        isLoggedIn = false
                        userName = ""
                    }
                    .padding()
                }
            } else {
                // LoginView(Binding: State, Binding: State)
                LoginView(isLoggedIn: $isLoggedIn, userName: $userName)
            }
        }
    }
}

#Preview {
    MainView()
}
