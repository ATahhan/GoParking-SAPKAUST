//
//  GradientView.swift
//  TeamPlusApp
//
//  Created by Ammar AlTahhan on 06/02/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import UIKit


class GradientView: UIView {
    
    var topColor: UIColor
    var bottomColor: UIColor
    var startPoint: CGPoint
    var endPoint: CGPoint
    
    private var gradientLayer: CAGradientLayer!
    
    init(frame: CGRect, topColor: UIColor, bottomColor: UIColor) {
        self.topColor = topColor
        self.bottomColor = bottomColor
        self.startPoint = CGPoint(x: 0.5, y: 0)
        self.endPoint = CGPoint(x: 0.5, y: 1)
        super.init(frame: frame)
    }
    
    init(frame: CGRect, topColor: UIColor, bottomColor: UIColor, startPoint: CGPoint, endPoint: CGPoint) {
        self.topColor = topColor
        self.bottomColor = bottomColor
        self.startPoint = startPoint
        self.endPoint = endPoint
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Use DesignableView for Nibs and Storyboards")
    }
    
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    override func layoutSubviews() {
        self.gradientLayer = self.layer as? CAGradientLayer
        self.gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        self.gradientLayer.startPoint = startPoint
        self.gradientLayer.endPoint = endPoint
    }
    
}
