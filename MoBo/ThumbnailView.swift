//
//  ThumbnailView.swift
//  MoBo
//
//  Created by Sarvesh Suryavanshi on 06/11/22.
//

import UIKit

class ThumbnailView: UIView {
    
    // MARK: - Properties
    
    private var thumbnailImageView: UIImageView?
    
    init(title: String) {
        super.init(frame: .zero)
        self.setupUI()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setupUI()
    }
    
    // MARK: - Private Function
    
    private func setupUI() {
        self.backgroundColor = .clear
        if let url = URL(string: "https://image.tmdb.org/t/p/w500/iZf0KyrE25z1sage4SYFLCCrMi9.jpg"),
           let data = try? Data(contentsOf: url) {
            let image = UIImage(data: data)
            let thumbnailImageView = UIImageView(image: image)
            thumbnailImageView.backgroundColor = .yellow
            
            thumbnailImageView.layer.cornerRadius = 8.0
            thumbnailImageView.clipsToBounds = true

            
            self.thumbnailImageView = thumbnailImageView
            thumbnailImageView.addAndFill(parentView: self, padding: 5.0)
        }
    }
}
