//
//  ResultViewController.swift
//  Payment
//
//  Created by Darya Yuryeva on 27.03.21.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.resultLabel.text = String(format: "%.2f", amountForEach)
    }
    
    @IBAction func backToMainVC(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
