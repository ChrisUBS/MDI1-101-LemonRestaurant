//
//  ReservationForm.swift
//  LemonRestaurant
//
//  Created by Christian Bonilla on 07/08/25.
//

import SwiftUI

struct ReservationForm: View {
    
    @State private var username: String = ""
    @State private var guestCount: Int = 0
    
    var body: some View {
        NavigationView{
            VStack{
                Form{
                    Section(header: Text("Reservation Details")) {
                        TextField("Name", text: $username)
                        Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...10)
                    }
                }
            }
            .navigationTitle(Text("Reservation Form"))
        }
    }
}

#Preview {
    ReservationForm()
}
