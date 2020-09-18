//
//  ViewController.swift
//  ArtBook
//
//  Created by Jamie on 2020/09/17.
//  Copyright © 2020 Jamie. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var tableView: UITableView!
    
    var nameArray = [String]()
    var idArray = [UUID]()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(barButtonClicked))
        
        getData()
        // Do any additional setup after loading the view.
    }
    
    func getData() {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Paintings")
        fetchRequest.returnsObjectsAsFaults = false
        
        do {
            
            let results = try context.fetch(fetchRequest)
            
            for result in results as! [NSManagedObject] {
                
                if let name = result.value(forKey: "name") as?  String {
                    
                    self.nameArray.append(name)
                }
                
                if let id = result.value(forKey: "id") as? UUID {
                    
                    self.idArray.append(id)
                }
                
                self.tableView.reloadData()
            }

            
        } catch {
            
        }
        
    }
    
    @objc func barButtonClicked() {
     
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return nameArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = UITableViewCell()
        
        cell.textLabel?.text = nameArray[indexPath.row]
        
        return cell

    }
    
    
    


}

