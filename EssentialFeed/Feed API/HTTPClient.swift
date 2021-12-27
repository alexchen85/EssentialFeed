//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by shuo on 2021/12/27.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case faliure(Error)
}

public protocol HTTPClient {
    
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
