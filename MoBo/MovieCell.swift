//
//  MovieCell.swift
//  MoBo
//
//  Created by Sarvesh Suryavanshi on 06/11/22.
//

import UIKit

class MovieCell: UITableViewCell {

    // MARK: - IBOutlets
    
    @IBOutlet weak var labelSubTitle: UILabel!
    @IBOutlet weak var labelMainTitle: UILabel!
    @IBOutlet weak var buttonBookmark: UIButton!
    @IBOutlet weak var ratingsView: UIView!
    
    // MARK: - Properties

    // MARK: - Lifecycle Methods
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.configureView()
        self.configureUIComponents()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: - Private Methods

    private func configureUIComponents() {
        
        self.labelMainTitle.font = UIFont(name: "SF", size: "10")
    }
    
    private func configureView() {
        self.backgroundColor = .clear
        self.backgroundView?.backgroundColor = .clear
        self.selectionStyle = .none
    }
    
    
    // MARK: - Action Methods



    
}
