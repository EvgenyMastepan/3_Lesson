//
//  Extensions.swift
//  3_Lesson
//
//  Created by Evgeny Mastepan on 25.06.2025.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach { addSubview($0) }
    }
}
