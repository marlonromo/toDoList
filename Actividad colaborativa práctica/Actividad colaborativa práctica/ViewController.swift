//
//  ViewController.swift
//  Actividad colaborativa práctica
//
//  Created by user211770 on 3/10/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var list = ["A", "B", "C"]
    @IBOutlet weak var taskTable: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let taskCell = taskTable.dequeueReusableCell(withIdentifier: "idTask", for: indexPath)
        taskCell.textLabel?.text = list[indexPath.row]
        taskCell.detailTextLabel?.text = "\(indexPath.row)"
        taskCell.imageView?.image = UIImage(named: "Sign-check-icon")
        return taskCell
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        taskTable.delegate = self
        taskTable.dataSource = self
    }

}
