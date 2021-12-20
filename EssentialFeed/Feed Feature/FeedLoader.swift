//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by shuo on 2021/12/20.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
