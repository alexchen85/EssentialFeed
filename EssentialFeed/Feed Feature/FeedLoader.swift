//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by shuo on 2021/12/20.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
