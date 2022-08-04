//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by shuo on 2021/12/20.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedImage])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
