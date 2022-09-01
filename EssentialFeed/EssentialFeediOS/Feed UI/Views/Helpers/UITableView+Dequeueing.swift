//
//  UITableView+Dequeueing.swift
//  EssentialFeediOS
//
//  Created by shuo on 2022/8/25.
//

import UIKit

extension UITableView {
    func dequeReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
