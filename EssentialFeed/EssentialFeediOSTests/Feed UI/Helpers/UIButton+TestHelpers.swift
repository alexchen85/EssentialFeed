//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by shuo on 2022/8/23.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
