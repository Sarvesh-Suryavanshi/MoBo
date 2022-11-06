//
//  HomeSceneProtocol.swift
//  MoBo
//
//  Created by Sarvesh Suryavanshi on 05/11/22.
//

import Foundation

protocol HomeViewProtocol: class {
    func updateView()
}

protocol HomeControllerProtocol: class {
    func fetchStaffPicks()
    func numberOfRows(for indexPath: IndexPath)
    func movie(at indexPath: IndexPath)
}

protocol HomeModelProtocol: class {
    func fetchStaffingPicks()
    func fetchFavouriteMovies()
    func search(movieName: String)
}
