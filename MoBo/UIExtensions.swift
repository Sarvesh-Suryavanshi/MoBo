//
//  UIExtensions.swift
//  MoBo
//
//  Created by Sarvesh Suryavanshi on 06/11/22.
//

import UIKit

protocol ReuseIdentifier {
    static var reuseIdentifier: String { get }
}

extension UITableViewCell: ReuseIdentifier {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension UICollectionViewCell: ReuseIdentifier {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension UIStackView {
    
    class func new(axis: NSLayoutConstraint.Axis, distribution: Distribution = .fill, spacing: CGFloat = 0) -> UIStackView {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = distribution
        stackView.spacing = spacing
        stackView.axis = axis
        return stackView
    }
}

extension UIView {
    
    func addAndFill(parentView: UIView, padding: CGFloat = 0) {
        self.translatesAutoresizingMaskIntoConstraints = false
        parentView.translatesAutoresizingMaskIntoConstraints = false
        parentView.addSubview(self)
        self.leadingAnchor.constraint(equalTo: parentView.leadingAnchor, constant: padding).isActive = true
        self.trailingAnchor.constraint(equalTo: parentView.trailingAnchor, constant: -1 * padding).isActive = true
        self.topAnchor.constraint(equalTo: parentView.topAnchor, constant: padding).isActive = true
        self.bottomAnchor.constraint(equalTo: parentView.bottomAnchor, constant: -1 * padding).isActive = true
    }
}
