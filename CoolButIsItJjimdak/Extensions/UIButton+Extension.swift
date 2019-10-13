//
//  UIButton+Extension.swift
//  Cool but is it Jjimdak?
//
//  Created by Zakaria on 12/10/2019.
//  Copyright © 2019 Zakaria. All rights reserved.
//

import UIKit

extension UIButton {
    func addRightImage(image: UIImage, offset: CGFloat) {
        self.setImage(image, for: .normal)
        self.imageView?.translatesAutoresizingMaskIntoConstraints = false
        self.imageView?.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0.0).isActive = true
        self.imageView?.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -offset).isActive = true
        self.imageView?.contentMode = .right
    }
}
