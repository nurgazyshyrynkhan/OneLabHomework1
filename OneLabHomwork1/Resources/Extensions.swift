//
//  Extensions.swift
//  OneLabHomwork1
//
//  Created by Gazinho Dos Santos on 27.03.2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
