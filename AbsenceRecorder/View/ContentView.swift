//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Jaswal, Eesa (SPH) on 31/01/2023.
//

import SwiftUI

struct ContentView: View {
    var divisions: [Division] = Division.examples
    var currentDate: Date = Date()
    
    var body: some View {
        NavigationView {
            List(divisions, id: \.self.code) { division in
                Text("Div: \(division.code)")
                    .padding()
            }
            .navigationTitle(currentDate.getShortDate())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
