//
//  trackSpending.swift
//  Financial-Planning
//
//  Created by Smriti Rangarajan on 6/11/22.
//

import Foundation
import UIKit

class trackSpending: UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var amountInput: UITextField!
    @IBOutlet weak var whatInput: UITextField!
    
    var amounts = [String]()
    var whats = [String]()
    var total = 0
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        amounts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "budgetCell") as! BudgetTableViewCell
           let i = amounts[indexPath.row]
           cell.amount?.text = "$" + i
           let j = whats[indexPath.row]
        cell.what?.text = j
            
           return cell
    }
    
    @IBAction func reminderFieldDoneEditing() {
        amounts.append(amountInput.text!)
        whats.append(whatInput.text!)
        amountInput.text = ""
        whatInput.text = ""
        tableView.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    @IBAction func showAlert(_ sender: Any) {
        for i in 0 ..< amounts.count {
            total += Int(amounts[i]) ?? 0
        }
        let alertController = UIAlertController(title: "Total", message:
            "$" + String(total), preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))

        self.present(alertController, animated: true, completion: nil)
    }


}
class BudgetTableViewCell: UITableViewCell {
    @IBOutlet weak var amount: UILabel!
    @IBOutlet weak var what: UILabel!
 
}
