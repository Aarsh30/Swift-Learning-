//
//  post.swift
//  APIFetching
//
//  Created by Aarsh  Patel on 13/02/24.
//

import Foundation

struct Post: Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}

