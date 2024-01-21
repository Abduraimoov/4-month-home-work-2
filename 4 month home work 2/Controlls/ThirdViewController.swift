//
//  ThirdViewController.swift
//  4 month home work 2
//
//  Created by Nurtilek on 1/19/24.
//

import UIKit

class ThirdViewController: UIViewController {
    
    private lazy var myImage: UIImageView = {
        let Img = UIImageView()
        Img.image = UIImage(named: "2")
        Img.translatesAutoresizingMaskIntoConstraints = false
        return Img
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemCyan
       setupUI()
    }
   
    private func  setupUI() {
        view.addSubview(myImage)
        
        NSLayoutConstraint.activate([
        myImage.heightAnchor.constraint(equalToConstant: 186),
        myImage.widthAnchor.constraint(equalToConstant: 160),
        myImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        myImage.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }


}

