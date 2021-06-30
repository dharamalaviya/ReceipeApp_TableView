//
//  ViewController.swift
//  TableViews
//
//  Created by DCS on 24/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let myLabel:UILabel = {
        let label = UILabel()
        label.text = "Welcome To Recipe APP"
        label.textAlignment = .center
        label.textColor = .red
        label.font = .boldSystemFont(ofSize: 30)
        return label
    }()
    
    private let myImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "Receipe")
        return imageView
    }()
    
    private let myButton : UIButton = {
        let button = UIButton()
        button.setTitle("Sign in", for: .normal)
        button.addTarget(self, action: #selector(handleButtonLogin), for: .touchUpInside)
        button.backgroundColor = .red
        button.layer.cornerRadius = 5
        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.view.backgroundColor = .black
        view.backgroundColor = .black
        view.addSubview(myLabel)
        view.addSubview(myImageView)
        view.addSubview(myButton)
        
    }
    
    override func viewDidLayoutSubviews() {
        myLabel.frame = CGRect(x: 20, y: 80, width: view.width - 40, height: 40)
        myImageView.frame = CGRect(x: 20, y: myLabel.bottom + 20, width: view.width - 40, height: 400)
        myButton.frame = CGRect(x: 100, y:myImageView.bottom + 40, width: view.width - 200, height: 40)
    }
    
    @objc func handleButtonLogin() {
        print("Clicked!!!")
        
        let vc = Login()
        navigationController?.pushViewController(vc, animated: true)
    }


}

