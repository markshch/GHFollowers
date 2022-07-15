//
//  GFTitleLabel.swift
//  GHFollowers
//
//  Created by Mark ⠀ on 2/24/22.
//

import UIKit

class GFTitleLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(textAllignment: NSTextAlignment, fontSize: CGFloat) {
        super.init(frame: .zero)
        self.textAlignment = textAllignment
        self.font = UIFont.systemFont(ofSize: fontSize, weight: .bold)
        configure()
    }
    
    private func configure() {
        textColor = .label
        adjustsFontSizeToFitWidth = true   ///If long username, will shrink
        minimumScaleFactor = 0.90 ///how much will it shrink by
        lineBreakMode = .byTruncatingTail  ///If too long, what is the behavior?  SuperLongUsername -> SuperLongUserna..
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
