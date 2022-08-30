//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by shuo on 2022/8/30.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
