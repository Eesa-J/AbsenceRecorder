//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Jaswal, Eesa (SPH) on 02/02/2023.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division] = []
    
    init() {
        loadFromFile()
    }
    
    func loadFromFile() {
        // get url from the file you want to load from
        let url = FileManager.default.newPath(file: "divisions.json")
        if let data = try? Data(contentsOf: url) {
            let decoder = JSONDecoder()
            if let loaded = try? decoder.decode([Division].self, from: data) {
                divisions = loaded
            }
        }
    }
    
    func saveToFile() {
        // create JSON encoder
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(divisions) {
            // take encoded objects and convert them into a string
            if let json = String(data: encoded, encoding: .utf8) {
                // create the file path
                let url = FileManager.default.newPath(file: "divisions.json")
                do {
                    // write the json string to that file
                    try json.write(to: url, atomically: true, encoding: .utf8)
                } catch {
                    print(error.localizedDescription)
                }
            } else {
                print("Unable to form JSON string")
            }
        }
    }
}
