//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by John Crisostomo on 09/04/2017.
//  Copyright © 2017 John Crisostomo. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    private var _task: Task!
    private var _previousVC: TasksViewController!
    
    var previousVC: TasksViewController {
        get {
            return _previousVC
        } set {
            _previousVC = newValue
        }
    }
    
    var task: Task {
        get {
            return _task
        } set {
            _task = newValue
        }
    }

    @IBOutlet weak var taskLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if _task.important {
            taskLabel.text = "❗️\(_task.name)"
        } else {
            taskLabel.text = _task.name
        }
    }
    
    @IBAction func completeTapped(_ sender: Any) {
        _previousVC.tasks.remove(at: _previousVC.selectedIndex)
        _previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
}
