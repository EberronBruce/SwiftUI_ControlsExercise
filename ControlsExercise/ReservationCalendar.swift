//
//  ReservationCalendar.swift
//  ControlsExercise
//
//  Created by Bruce Burgess on 8/17/23.
//

import SwiftUI

struct ReservationCalendar: View {
    
    @State var reservationDate = Date()
    
    var body: some View {
        Form {
            HStack(spacing: 8) {
                DatePicker(selection: $reservationDate, in:Date()..., displayedComponents: [.date, .hourAndMinute]) {}
                Button(action: { print("Do Something")}) {
                    HStack {
                        Image(systemName: "arrow.right.circle")
                        Text("Done")
                    }
                }.padding(20)
            }
            Text("Date is \(reservationDate.formatted(date: .long, time: .complete))")
        }
    }
}

struct ReservationCalendar_Previews: PreviewProvider {
    static var previews: some View {
        ReservationCalendar()
    }
}
