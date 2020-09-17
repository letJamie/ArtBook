//
//  SecondViewController.swift
//  ArtBook
//
//  Created by Jamie on 2020/09/17.
//  Copyright © 2020 Jamie. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var artistText: UITextField!
    
    @IBOutlet weak var yearText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(hideKey))
        view.addGestureRecognizer(gestureRecognizer)
    }

    @objc func hideKey() {
        
        view.endEditing(true)
    }
    
    @IBAction func saveClicked(_ sender: Any) {
    }
    
    
}
