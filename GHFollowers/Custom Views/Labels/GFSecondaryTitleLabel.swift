//
//  GFSecondaryTitleLabel.swift
//  GHFollowers
//
//  Created by Mark ⠀ on 3/6/22.
//

import UIKit

class GFSecondaryTitleLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(fontSize: CGFloat) {
        super.init(frame: .zero)
        self.font = UIFont.systemFont(ofSize: fontSize, weight: .medium)
        configure()
    }
    
    private func configure() {
        textColor = .secondaryLabel ///Light gray
        adjustsFontSizeToFitWidth = true   ///If long username, will shrink
        minimumScaleFactor = 0.90 ///how much will it shrink by
        lineBreakMode = .byTruncatingTail  ///If too long, what is the behavior?  -> ...
        translatesAutoresizingMaskIntoConstraints = false
    }

}
