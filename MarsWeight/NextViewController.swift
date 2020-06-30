//
//  NextViewController.swift
//  MarsWeight
//
//  Created by Aldiyar Massimkhanov on 6/25/20.
//  Copyright © 2020 Aldiyaar. All rights reserved.
//

import Foundation
import UIKit

class NextViewController: UIViewController{

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        label.center = CGPoint(x: 200, y: 300)
        label.textAlignment = .center
        label.text = "I'm a test label"
        self.view.addSubview(catImageView)
        self.view.addSubview(label)

//        setupLayout()
    }
        
    let catImageView: UIImageView = {
        let backgroundImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 1200 , height: 1000))
        backgroundImage.center = CGPoint(x: 170, y: 500)
        backgroundImage.image = UIImage(named: "4")
        return backgroundImage
    }()

    
//    private func setupLayout(){
//        catImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        catImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
//        catImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        catImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
//        catImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
//
//    }

}
