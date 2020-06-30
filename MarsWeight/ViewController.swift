//
//  ViewController.swift
//  MarsWeight
//
//  Created by Aldiyar Massimkhanov on 6/24/20.
//  Copyright © 2020 Aldiyaar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(catImageView)
        
        self.view.addSubview(catTextView1)
        self.view.addSubview(catTextView2)
        
        self.view.addSubview(catButtonView)
        
        self.view.addSubview(catTextField)
        configureTextFields()
        
        configureTapGesture()
//        self.view.addSubview(catLabel)

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    

//    let catLabel: UILabel = {
//        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
//        label.center = CGPoint(x: 200, y: 400)
//        label.textAlignment = .center
//        label.text = "I'm a test label"
//        label.layer.borderColor = UIColor.darkGray.cgColor
//        label.layer.borderWidth = 1.0
//
//        return label
//    }()
    
    let catTextField: UITextField = {
        let sampleTextField =  UITextField(frame: CGRect(x: 0, y: 0, width: 120, height: 60))
        sampleTextField.placeholder = ""
        sampleTextField.font = UIFont.systemFont(ofSize: 40)
        sampleTextField.center = CGPoint(x: 210, y: 330)
        sampleTextField.borderStyle = UITextField.BorderStyle.roundedRect
        sampleTextField.autocorrectionType = UITextAutocorrectionType.no
        sampleTextField.keyboardType = UIKeyboardType.numbersAndPunctuation
        sampleTextField.clearButtonMode = UITextField.ViewMode.whileEditing
        sampleTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        return sampleTextField
    }()

    
    let catImageView: UIImageView = {
        let backgroundImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 1200 , height: 1000))
        backgroundImage.center = CGPoint(x: 170, y: 500)
        backgroundImage.image = UIImage(named: "4")
        return backgroundImage
    }()
    
    let catTextView1: UILabel = {
        let mainText = UILabel(frame: CGRect(x: 0, y: 0, width: 800, height: 800))
        mainText.center = CGPoint(x: 210, y: 200)
        mainText.textAlignment = NSTextAlignment.center
        
        mainText.text = "CALCULATE YOUR"
        mainText.font = UIFont(name: "AppleSDGothicNeo-Bold" , size: 40.0)
        return mainText
    }()
    
    let catTextView2: UILabel = {
        let mainText2 = UILabel(frame: CGRect(x: -200, y: -100, width: 800, height: 800))
        mainText2.center = CGPoint(x: 210, y: 250)
        mainText2.textAlignment = NSTextAlignment.center
        mainText2.text = "WEIGHT ON MARS"
        mainText2.font = UIFont(name: "AppleSDGothicNeo-Bold" , size: 40.0)
        return mainText2
    }()
    
    let catButtonView: UIButton = {
        let btn = UIButton(frame: CGRect(x: 5, y: 800, width: 400, height: 60))
        btn.backgroundColor = .black
        btn.setTitle("CALCULATE", for: .normal)
        btn.titleLabel?.font =  UIFont(name: "AppleSDGothicNeo-Bold", size: 28)
        btn.addTarget(self, action: #selector(clicked), for: .touchUpInside)
        btn.layer.cornerRadius = 25

        return btn
    }()
    
    @objc func clicked(sender:UIButton!) {
        
        let userDefaultStore = UserDefaults.standard
        userDefaultStore.set(catTextField.text, forKey: "key_Value")
        let nextVC = NextViewController()
        navigationController?.pushViewController(nextVC, animated: true)
        print("Button Clicked")

    }
    
    private func configureTextFields(){
        catTextField.delegate = self
    }
    
    private func configureTapGesture(){
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.handleTap))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap () {
        print("Handle tap was called")
        view.endEditing(true)
    }
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
        
    }
}

