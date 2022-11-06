//
//  FileManager.swift
//  MoBo
//
//  Created by Sarvesh Suryavanshi on 05/11/22.
//

import Foundation

enum MovieService: String {
    
    static let type = "json"
    
    case allMovies = "AllMovies"
    case staffPickedMovies = "StaffPickedMovies"
}

class FileManager {
    
    static let shared = FileManager()
    
    private  init() {}
    
    func getLocalData(for service: MovieService) -> Data? {
        guard
            let path = Bundle.main.path(forResource: service.rawValue, ofType: MovieService.type)
        else { return nil }
        let pathURL = URL(fileURLWithPath: path)
        return try? Data(contentsOf: pathURL, options: .mappedIfSafe)
    }
}
 
