//
//  JjimdakImageViewController.swift
//  Cool but is it Jjimdak?
//
//  Created by Zakaria on 12/10/2019.
//  Copyright © 2019 Zakaria. All rights reserved.
//

import UIKit

class JjimdakImageViewController: UIViewController {
    
    let isOrNotJjimdak: UIImageView = {
        let image = UIImageView(image: UIImage())
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleToFill
        return image
    }()
    
    let JjimdakImage: UIImageView = {
        let image = UIImageView(image: UIImage())
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    let dissmissButton: largeFilledButton = {
        let button = largeFilledButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonToDissmiss(_:)), for: .touchUpInside)
        button.setTitle("Done", for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubviews()
        setupLayout()
    }
    
    func addSubviews() {
        view.addSubview(dissmissButton)
        view.addSubview(JjimdakImage)
        view.addSubview(isOrNotJjimdak)
    }
    
    func setupLayout() {
        
        dissmissButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        dissmissButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        dissmissButton.widthAnchor.constraint(equalToConstant: view.frame.width - 40).isActive = true
        dissmissButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        
        JjimdakImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        JjimdakImage.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        JjimdakImage.widthAnchor.constraint(equalToConstant: view.frame.width - 40).isActive = true
        
        isOrNotJjimdak.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        isOrNotJjimdak.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        isOrNotJjimdak.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        isOrNotJjimdak.heightAnchor.constraint(equalToConstant: 217).isActive = true
        
    }
    
    @objc func buttonToDissmiss(_ sender: largeFilledButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
