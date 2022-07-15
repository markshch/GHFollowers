//
//  GFBodyLabel.swift
//  GHFollowers
//
//  Created by Mark ⠀ on 2/24/22.
//

import UIKit

class GFBodyLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(textAllignment: NSTextAlignment) {
        super.init(frame: .zero)
        self.textAlignment = textAllignment
        configure()
    }
    
    private func configure() {
        textColor = .secondaryLabel ///Light gray
        font = UIFont.preferredFont(forTextStyle: .body)
        adjustsFontSizeToFitWidth = true   ///If long username, will shrink
        minimumScaleFactor = 0.75 ///how much will it shrink by
        lineBreakMode = .byWordWrapping  ///If too long, what is the behavior?  
        translatesAutoresizingMaskIntoConstraints = false
    }

}
