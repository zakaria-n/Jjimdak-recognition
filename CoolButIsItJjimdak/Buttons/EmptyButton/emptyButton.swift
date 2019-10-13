//
//  emptyButton.swift
//  Cool but is it Jjimdak?
//
//  Created by Zakaria on 12/10/2019.
//  Copyright © 2019 Zakaria. All rights reserved.
//

import UIKit

class emptyButton: Button {
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    var myValue: Int
    
    ///Constructor: - init
    override init(frame: CGRect) {
        // set myValue before super.init is called
        self.myValue = 0
        
        super.init(frame: frame)
        layer.borderWidth = 6/UIScreen.main.nativeScale
        layer.backgroundColor = UIColor(red:1, green:1, blue:1, alpha:1.0).cgColor
        setTitleColor(UIColor.black, for: .normal)
        setTitle("Ex-Machina", for: .normal)
        titleLabel?.font = UIFont(name: "Avenir", size: 22)
        layer.borderColor = UIColor.black.cgColor
        layer.cornerRadius = 5
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
