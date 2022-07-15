//
//  Follower.swift
//  GHFollowers
//
//  Created by Mark ⠀ on 2/24/22.
//

import Foundation

struct Follower: Codable, Hashable {
    ///## Vars must match names in curl call. Bcos of Codable
    var login: String
    var avatarUrl: String // Can convert from snake case to Camel case
    
}
