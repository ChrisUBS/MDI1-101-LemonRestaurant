//
//  ReservationForm.swift
//  LemonRestaurant
//
//  Created by Christian Bonilla on 07/08/25.
//

import SwiftUI

struct ReservationForm: View {
    
    @State private var username: String = ""
    @State private var guestCount: Int = 1
    
    var body: some View {
        NavigationView{
            VStack{
                Image("littleLemonLogo")
                Form{
                    Section(header: Text("Reservation Details")) {
                        TextField("Name", text: $username)
                        if username.isEmpty {
                            Text("Please enter your name")
                                .foregroundColor(.red)
                                .font(.caption)
                        }
                        
                        Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...10)
                        if guestCount > 5 {
                            Text("For large parties, we will contact you")
                                .foregroundColor(.yellow)
                                .font(.caption)
                        }
                        
                        Button("Confirm Reservation"){
                        }
                        .disabled(username.isEmpty)
                    }
                }
            }
//            .navigationTitle(Text("Reservation Form"))
        }
    }
}

#Preview {
    ReservationForm()
}
