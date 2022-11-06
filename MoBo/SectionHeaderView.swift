//
//  SectionHeaderView.swift
//  MoBo
//
//  Created by Sarvesh Suryavanshi on 06/11/22.
//

import UIKit

class SectionHeaderView: UIView {
    
    // MARK: - Properties
    
    var sectionTitle: String?
    
    init(title: String) {
        super.init(frame: .zero)
        sectionTitle = title
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Private Function
    
    private func setupUI() {
        self.backgroundColor = .yellow
    }
}
