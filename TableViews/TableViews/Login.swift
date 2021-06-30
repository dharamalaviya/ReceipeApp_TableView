//
//  Login.swift
//  TableViews
//
//  Created by DCS on 24/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class Login: UIViewController {
    
    private let myBackGroungImageView : UIImageView = {
        let backgroungImageView = UIImageView()
        backgroungImageView.contentMode = .scaleAspectFill
        backgroungImageView.clipsToBounds = true
        backgroungImageView.image = UIImage(named: "Noodles")
        return backgroungImageView
    }()
    
    private let myTextFeild:UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter Username"
        textField.textAlignment = .center
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .white
        textField.textColor = .black
        textField.layer.cornerRadius = 5
        return textField
    }()
    
    private let myTextFeildPassword:UITextField = {
        let textFieldPassword = UITextField()
        textFieldPassword.placeholder = "Enter Password"
        textFieldPassword.textAlignment = .center
        textFieldPassword.borderStyle = .roundedRect
        textFieldPassword.backgroundColor = .white
        textFieldPassword.textColor = .black
        textFieldPassword.isSecureTextEntry = true
        textFieldPassword.layer.cornerRadius = 5
        return textFieldPassword
    }()
    
    private let myButton : UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.addTarget(self, action: #selector(handleButtonLogin), for: .touchUpInside)
        button.backgroundColor = .green
        button.layer.cornerRadius = 5
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.addSubview(myBackGroungImageView)
        //view.addSubview(myImageViewLogo)
        view.addSubview(myTextFeild)
        view.addSubview(myTextFeildPassword)
        view.addSubview(myButton)
    }
    

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myBackGroungImageView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)
        myTextFeild.frame = CGRect(x: 20, y: 300, width: view.width - 40, height: 40)
        myTextFeildPassword.frame = CGRect(x: 20, y: myTextFeild.bottom + 40, width: view.width - 40, height: 40)
        myButton.frame = CGRect(x: 100, y: myTextFeildPassword.bottom + 60, width: view.width - 200, height: 40)
    }
    
    @objc func handleButtonLogin() {
        print("Clicked!!!")
        
        let vc = ReceipeMenuTableVC()
        navigationController?.pushViewController(vc, animated: true)
    }

}
