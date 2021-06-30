//
//  DetailedReceipeVC.swift
//  TableViews
//
//  Created by DCS on 30/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class DetailedReceipeVC: UIViewController {

    var image = UIImage()
    var lbl = ""
    var detail = ""
    
    private let myLabelName: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        return label
    }()
    
    private let myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let myTextViewDesc: UITextView = {
        let textView = UITextView()
        textView.textAlignment = .center
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Receipe Details"
        view.backgroundColor = .white
        myLabelName.text = lbl
        myImageView.image = image
        myTextViewDesc.text = detail
        view.addSubview(myLabelName)
        view.addSubview(myImageView)
        view.addSubview(myTextViewDesc)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myLabelName.frame = CGRect(x: 10, y: 80, width: view.width - 20, height: 20)
        myImageView.frame = CGRect(x: 10, y: myLabelName.bottom + 10, width: view.width - 10, height: 250)
        myTextViewDesc.frame = CGRect(x: 10, y:myImageView.bottom + 10, width: view.width - 10, height: 200)
    }
    
}
