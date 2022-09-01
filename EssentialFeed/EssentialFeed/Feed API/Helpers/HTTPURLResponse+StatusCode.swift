//
//  HTTPURLResponse+StatusCode.swift
//  EssentialFeed
//
//  Created by shuo on 2022/8/31.
//

import Foundation

extension HTTPURLResponse {
    private static var OK_200: Int { return 200 }
    
    var isOK: Bool {
        return statusCode == HTTPURLResponse.OK_200
    }
}
