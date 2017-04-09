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
    
    var task: Task {
        get {
            return _task
        } set {
            _task = newValue
        }
    }

    @IBOutlet weak var taskLabel: UILabel!
    @IBOutlet weak var completeTapped: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if _task.important {
            taskLabel.text = "❗️\(_task.name)"
        } else {
            taskLabel.text = _task.name
        }
    }
}
