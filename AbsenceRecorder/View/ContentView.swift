//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Jaswal, Eesa (SPH) on 31/01/2023.
//

import SwiftUI

struct ContentView: View {
    var divisions: [Division] = Division.examples
    @State private var currentDate: Date = Date()
    
    var body: some View {
        NavigationView {
            List(divisions, id: \.self.code) { division in
                DivisionItem(division:division)
            }
            .navigationTitle(currentDate.getShortDate())
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { currentDate = currentDate.previousDay() }) {
                        Image(systemName: "arrow.backward")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { currentDate = currentDate.nextDay() }) {
                        Image(systemName: "arrow.forward")
                    }
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
