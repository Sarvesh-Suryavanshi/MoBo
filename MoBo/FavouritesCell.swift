//
//  FavouritesCell.swift
//  MoBo
//
//  Created by Sarvesh Suryavanshi on 06/11/22.
//

import UIKit

class FavouritesCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.configureCollectionView()
        self.configureUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

    // MARK: - Private Methods
    
    private func configureUI() {
        self.backgroundColor = .clear
        self.backgroundView?.backgroundColor = .clear
        self.selectionStyle = .none
    }
    
    private func configureCollectionView() {
        
//        let screenSize = UIScreen.main.bounds.size
//        let screenWidth = screenSize.width
//        let screenHeight = screenSize.height
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 0, bottom: 10, right: 0)
        layout.itemSize = CGSize(width: 182, height: 270)
        layout.scrollDirection = .horizontal
        self.collectionView!.backgroundColor = .clear
        self.collectionView.collectionViewLayout = layout
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
    }
}


extension FavouritesCell: UICollectionViewDelegate {
    
}

extension FavouritesCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ThumbnailCell.reuseIdentifier, for: indexPath) as? ThumbnailCell else { return UICollectionViewCell() }
        return cell
    }
    
    
}

//extension FavouritesCell: UICollectionViewFlowLayout {
//
//}
