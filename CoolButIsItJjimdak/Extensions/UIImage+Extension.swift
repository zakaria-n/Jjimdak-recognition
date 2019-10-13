//
//  UIImage+Extension.swift
//  Cool but is it Jjimdak?
//
//  Created by Zakaria on 12/10/2019.
//  Copyright © 2019 Zakaria. All rights reserved.
//

import UIKit

extension UIImage {
    
    func resized(newSize:CGSize) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(newSize, false, UIScreen.main.scale)
        self.draw(in: CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage!
    }
}
