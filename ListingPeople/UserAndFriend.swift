//
//  UserAndFriend.swift
//  ListingPeople
//
//  Created by Yuki Shinohara on 2020/04/10.
//  Copyright © 2020 Yuki Shinohara. All rights reserved.
//

import Foundation

struct User: Hashable {
    let id: String
    let isActive: Bool
    let name: String
    let age: Int
    let company: String
    let email: String
    let address: String
    let about: String
    let registered: String
//    let tags: [Tag]
}

struct Tag {
    let type: String
}

struct Friend {
    let id: String
    let name: String
}
