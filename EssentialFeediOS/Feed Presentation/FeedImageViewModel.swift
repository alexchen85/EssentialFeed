//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by shuo on 2022/8/24.
//

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool
    
    var hasLocation: Bool {
        return location != nil
    }
}
