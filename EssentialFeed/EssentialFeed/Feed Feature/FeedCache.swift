//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by shuo on 2022/9/2.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
