//
//  FeedErrorViewModel.swift
//  EssentialFeediOS
//
//  Created by shuo on 2022/8/30.
//

struct FeedErrorViewModel {
    let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> FeedErrorViewModel {
        FeedErrorViewModel(message: message)
    }
}
