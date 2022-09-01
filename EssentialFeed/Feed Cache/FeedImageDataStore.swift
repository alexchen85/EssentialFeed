//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by shuo on 2022/9/1.
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>
    
    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
