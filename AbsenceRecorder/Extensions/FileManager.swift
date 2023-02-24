//
//  FileManager.swift
//  AbsenceRecorder
//
//  Created by Jaswal, Eesa (SPH) on 24/02/2023.
//

import Foundation

extension FileManager {
    
    func newPath(file: String) -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let userPath = paths[0]
        let url = userPath.appendingPathComponent(file)
        return url
    }
    
}
