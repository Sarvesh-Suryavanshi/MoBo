//
//  ViewController.swift
//  MoBo
//
//  Created by Sarvesh Suryavanshi on 05/11/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.createBackground()
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

