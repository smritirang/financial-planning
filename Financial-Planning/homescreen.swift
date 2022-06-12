//
//  homescreen.swift
//  Financial-Planning
//
//  Created by Smriti Rangarajan on 6/11/22.
//

import Foundation
import UIKit

class homescreen: UIViewController, UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reminders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reminderCell") as! TableViewCell
           let location = reminders[indexPath.row]
           cell.remind?.text = location
           cell.complete?.isHidden = true
           cell.incomplete?.isHidden = false
           return cell
    }
    
    
    
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var done: UIButton!
    @IBOutlet weak var reminder: UITextField!
   
    
    var reminders = [String]()
    @IBAction func textFieldEditing() {
        myLabel.isHidden = true
        myTextField.isHidden = false
        done.isHidden = false
    }
    @IBAction func textFieldDoneEditing() {
        myLabel.text = myTextField.text!
        myTextField.isHidden = true
        done.isHidden = true
        myLabel.isHidden = false
    }
    
    @IBAction func reminderFieldDoneEditing() {
        reminders.append(reminder.text!)
        reminder.text = ""
        tableView.reloadData()
    }
    
   
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTextField.isHidden = true
        done.isHidden = true
        myLabel.isHidden = false
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }


}


class TableViewCell: UITableViewCell {
    @IBOutlet weak var remind: UILabel!
    @IBOutlet weak var complete: UIButton!
    @IBOutlet weak var incomplete: UIButton!
    
    @IBAction func finished(){
        complete.isHidden = false
        incomplete.isHidden = true
    }
    
    @IBAction func unfinished(){
        complete.isHidden = true
        incomplete.isHidden = false
    }
    
}
