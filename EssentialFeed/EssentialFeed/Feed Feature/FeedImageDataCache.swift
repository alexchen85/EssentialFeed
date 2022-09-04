//
//  FeedImageDataCache.swift
//  EssentialFeed
//
//  Created by shuo on 2022/9/4.
//

import Foundation

public protocol FeedImageDataCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ data: Data, for url: URL, completion: @escaping (Result) -> Void)
}
