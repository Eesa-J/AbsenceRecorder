//
//  Date.swift
//  AbsenceRecorder
//
//  Created by Jaswal, Eesa (SPH) on 31/01/2023.
//

import Foundation

extension Date {
    
    func getShortDate() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        
        return formatter.string(from: self)
    }
    
}
