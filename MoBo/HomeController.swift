//
//  HomeController.swift
//  MoBo
//
//  Created by Sarvesh Suryavanshi on 05/11/22.
//

import Foundation

class HomeController {
    
    private var view: HomeViewProtocol?
    private var model: HomeModelProtocol?

    init(view: HomeViewProtocol, model: HomeModelProtocol) {
        self.view = view
        self.model = model
    }
    
}

extension HomeController: HomeControllerProtocol {
    
    func fetchStaffPicks() {
        self.model?.fetchStaffingPicks()
    }
    
    func numberOfRows(for indexPath: IndexPath) {
        
    }
    
    func movie(at indexPath: IndexPath) {
        
    }
}
