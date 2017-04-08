//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by John Crisostomo on 08/04/2017.
//  Copyright © 2017 John Crisostomo. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    private var _previousVC = TasksViewController()
    
    var previousVC: TasksViewController {
        get {
            return _previousVC
        } set {
            _previousVC = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: Any) {
        let task = Task()
        
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        _previousVC.tasks.append(task)
        _previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
}
