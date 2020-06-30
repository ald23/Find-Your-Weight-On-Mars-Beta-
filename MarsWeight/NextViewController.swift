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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // Make the navigation bar background clear
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
    }


    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(catImageView)
        self.view.addSubview(catTextView)

        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        label.center = CGPoint(x: 200, y: 350)
        label.textAlignment = .center
        label.font = UIFont(name: "AppleSDGothicNeo-Bold" , size: 42.0)
        self.view.addSubview(label)
        
        
        
        let userDefault = UserDefaults.standard
        label.text = userDefault.string(forKey: "key_Value")!
        label.isUserInteractionEnabled = false

//        setupLayout()
    }
        
    let catImageView: UIImageView = {
        let backgroundImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 1200 , height: 1000))
        backgroundImage.center = CGPoint(x: 170, y: 500)
        backgroundImage.image = UIImage(named: "4")
        return backgroundImage
    }()
    
    
    let catTextView: UILabel = {
        let mainText = UILabel(frame: CGRect(x: 0, y: 0, width: 800, height: 800))
        mainText.center = CGPoint(x: 210, y: 280)
        mainText.textAlignment = NSTextAlignment.center
        
        mainText.text = "YOUR WEIGHT IS"
        mainText.font = UIFont(name: "AppleSDGothicNeo-Bold" , size: 35.0)
        return mainText
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
