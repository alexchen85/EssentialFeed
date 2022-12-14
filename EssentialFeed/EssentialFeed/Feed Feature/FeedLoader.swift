//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by shuo on 2021/12/20.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>

    func load(completion: @escaping (Result) -> Void)
}
