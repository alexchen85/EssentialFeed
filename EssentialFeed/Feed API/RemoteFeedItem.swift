//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by shuo on 2022/8/4.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
