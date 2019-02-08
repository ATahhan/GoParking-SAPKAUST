//
//  Buttons.swift
//  TeamPlusApp
//
//  Created by Ammar AlTahhan on 19/01/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation
import UIKit

class MainYellowFillButton: UIButton {
    override func awakeFromNib() {
        backgroundColor = UIColor.secondary
        setTitleColor(UIColor.backgroundView, for: .normal)
        layer.cornerRadius = bounds.height/2
    }
    
}

class MainYellowBorderButton: UIButton {
    override func awakeFromNib() {
        layer.borderColor = UIColor.secondary.cgColor
        layer.borderWidth = 2
        setTitleColor(UIColor.backgroundView, for: .normal)
        layer.cornerRadius = bounds.height/2
    }
}

class ConvertableMainYellowButton: UIButton {
    func convertToBordered() {
        layer.borderColor = UIColor.secondary.cgColor
        layer.borderWidth = 2
        setTitleColor(UIColor.backgroundView, for: .normal)
        layer.cornerRadius = bounds.height/2
    }
    func convertToFilled() {
        backgroundColor = UIColor.secondary
        setTitleColor(UIColor.backgroundView, for: .normal)
        layer.cornerRadius = bounds.height/2
    }
}

class MainFillButton: UIButton {
    override func awakeFromNib() {
        backgroundColor = UIColor.darkMain
        setTitleColor(UIColor.backgroundView, for: .normal)
        layer.cornerRadius = bounds.height/2
    }
}
