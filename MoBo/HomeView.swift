//
//  ViewController.swift
//  MoBo
//
//  Created by Sarvesh Suryavanshi on 05/11/22.
//

import UIKit

class HomeView: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var tableView: TableView! {
        didSet {
            tableView.estimatedRowHeight = 40
            tableView.rowHeight = UITableView.automaticDimension
        }
    }
    
    // MARK: - Properties
    
    var controller: HomeControllerProtocol?
    
    // MARK: - Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.controller?.fetchStaffPicks()
        self.createBackground()
        self.configureTableView()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    // MARK: - Private Methods
    
    private func configureTableView() {
        self.view.bringSubviewToFront(self.tableView)
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.backgroundColor = .clear
        self.tableView.backgroundView?.backgroundColor = .clear
    }
    
    private func createBackground() {
        
        let viewSize = self.view.bounds.size
        
        let trailingPathMultiplier: CGFloat = 0.22
        let leadingPathMultiplier: CGFloat = 0.30
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: viewSize.width, y: 0))
        path.addLine(to: CGPoint(x: viewSize.width, y: (viewSize.height * trailingPathMultiplier)))
        path.addLine(to: CGPoint(x: 0, y: (viewSize.height * leadingPathMultiplier)))
        path.addLine(to: CGPoint(x: 0, y: 0))
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.fillColor = UIColor.white.cgColor
        self.view.layer.addSublayer(shapeLayer)
    }
    
}

extension HomeView: HomeViewProtocol {
    func updateView() {
        
    }
}

extension HomeView: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.section == 0 ? 131.0 : 300.0
    }
}

extension HomeView: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? 5 : 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: MovieCell.reuseIdentifier, for: indexPath) as? MovieCell
            else {
                return UITableViewCell()
            }
            
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: FavouritesCell.reuseIdentifier, for: indexPath) as? FavouritesCell
            else {
                return UITableViewCell()
            }
            
            return cell
        }
    }
}
