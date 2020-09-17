//
//  ViewController.swift
//  ArtBook
//
//  Created by Jamie on 2020/09/17.
//  Copyright © 2020 Jamie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(barButtonClicked))
        
        // Do any additional setup after loading the view.
    }
    
    @objc func barButtonClicked() {
     
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }

    
    
    


}

