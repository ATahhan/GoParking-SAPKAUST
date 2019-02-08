//
//  DesignableTitledView.swift
//  TeamPlusApp
//
//  Created by Ammar AlTahhan on 05/02/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import UIKit

@IBDesignable class DesignableTitledView: UIView {
    
    @IBInspectable var title: String = "" {
        didSet {
            label.text = title
        }
    }
    
    var label = UILabel()
    var stackView = UIStackView()
    var sideView = UIView()
    var titleAreaSize: CGSize {
        return CGSize(width: label.bounds.width+stackView.spacing+sideView.bounds.width+12, height: stackView.bounds.height + 12)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupView()
    }
    
    private func setupView() {
        sideView = UIView()
        sideView.backgroundColor = .darkMain
        
        label.textColor = .darkMain
        label.font = UIFont(name: "Ubuntu-Medium", size: 15)
        
        stackView = UIStackView(arrangedSubviews: [sideView, label])
        stackView.spacing = 8
        addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: topAnchor, constant: 12).isActive = true
        stackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 12).isActive = true
        stackView.rightAnchor.constraint(equalTo: rightAnchor, constant: -12).isActive = true
        
        sideView.translatesAutoresizingMaskIntoConstraints = false
        sideView.widthAnchor.constraint(equalToConstant: 2).isActive = true
        sideView.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
}
