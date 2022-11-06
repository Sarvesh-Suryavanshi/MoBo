//
//  APIManager.swift
//  MoBo
//
//  Created by Sarvesh Suryavanshi on 05/11/22.
//

import Foundation

class APIManager {
    
    static let shared = APIManager()
    
    func getSatffPicks(url: URL? = nil, completion: @escaping (Result<MovieList, Error>)-> Void) {
        
    }
    
    func search(searchTerm: String, url: URL? = nil, completion: @escaping (Result<MovieList, Error>)-> Void) {
        
    }
}
