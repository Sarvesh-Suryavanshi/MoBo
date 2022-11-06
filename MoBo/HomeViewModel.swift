//
//  HomeViewModel.swift
//  MoBo
//
//  Created by Sarvesh Suryavanshi on 05/11/22.
//

import Foundation

class HomeViewModel {
    
    private var apiManager: APIManager
    private var fileManager: FileManager
    
    init(apiManager: APIManager = .shared, fileManager: FileManager = .shared) {
        self.apiManager = apiManager
        self.fileManager = fileManager
    }
}


extension HomeViewModel: HomeModelProtocol {
    
    func fetchStaffingPicks() {
        apiManager.getSatffPicks { (result) in
            switch result {
            case .success(let movieList):
                print(movieList)
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func fetchFavouriteMovies() {
        
    }
    
    func search(movieName: String) {
        
    }
}

class APIManagerStub: APIManager {
    
    override func getSatffPicks(url: URL?, completion: @escaping (Result<MovieList, Error>) -> Void) {
        if let data = FileManager.shared.getLocalData(for: .staffPickedMovies) {
            do {
                let movieList = try JSONDecoder().decode(MovieList.self, from: data)
                completion(.success(movieList))
            } catch(let error) {
                completion(.failure(error))
            }
        }
    }
}
