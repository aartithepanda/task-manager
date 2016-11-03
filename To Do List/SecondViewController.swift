//
//  SecondViewController.swift
//  To Do List
//
//  Created by Aarti Panda on 6/3/16.
//  Copyright © 2016 Panda. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var item: UITextField!
    
    @IBOutlet var date: UITextField!
    
    @IBOutlet var details: UITextField!
    
    @IBAction func addItem(sender: AnyObject) {
        toDoList.append(item.text! + " by " + date.text!)
        item.text = ""
        date.text = ""
        
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField:UITextField!) -> Bool {
        item.resignFirstResponder()
        date.resignFirstResponder()
        return true
    }


}

