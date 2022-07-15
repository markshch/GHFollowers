//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Mark ⠀ on 3/7/22.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
