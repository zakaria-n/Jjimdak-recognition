//
//  largeEmptyButton.swift
//  Cool but is it Jjimdak?
//
//  Created by Zakaria on 12/10/2019.
//  Copyright © 2019 Zakaria. All rights reserved.
//

import UIKit

class largeEmptyButton: emptyButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        contentEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
    }
}

