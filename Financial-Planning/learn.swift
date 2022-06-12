//
//  learn.swift
//  Financial-Planning
//
//  Created by Smriti Rangarajan on 6/11/22.
//

import Foundation
import UIKit

class learn: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func debitcredit(_ sender: UIButton) {
        if let url = URL(string: "https://www.youtube.com/watch?v=XbtSftL6dbY") {
          UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func stockbasics(_ sender: UIButton) {
        if let url = URL(string: "https://www.youtube.com/watch?v=p7HKvqRI_Bo") {
          UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func insurance(_ sender: UIButton) {
        if let url = URL(string: "https://www.youtube.com/watch?v=3ctoSEQsY54") {
          UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
        


}
