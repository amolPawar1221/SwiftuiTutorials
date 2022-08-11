//
//  DatePickerBootcamp.swift
//  AsyncWaitSwitUI
//
//  Created by Amol Pawar on 11/07/22.
//

import SwiftUI

struct DatePickerBootcamp: View {

    @State var date: Date = Date()
    var body: some View {
        DatePicker("select date", selection: $date, displayedComponents: [.date, .hourAndMinute])
            .accentColor(.red)
            .datePickerStyle(.wheel)
            .padding()
            .font(.headline)
            .foregroundColor(.red)
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
