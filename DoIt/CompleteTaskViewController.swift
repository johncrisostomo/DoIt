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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if _task.important {
            taskLabel.text = "❗️\(_task.name!)"
        } else {
            taskLabel.text = _task.name
        }
    }
    
    @IBAction func completeTapped(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        context.delete(_task)
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        navigationController!.popViewController(animated: true)
    }
}
