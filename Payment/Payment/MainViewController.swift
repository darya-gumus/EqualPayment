//
//  MainViewController.swift
//  Payment
//
//  Created by Darya Yuryeva on 26.03.21.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var totalSumTF: UITextField!
    @IBOutlet weak var zeroTip: UIButton!
    @IBOutlet weak var tenTip: UIButton!
    @IBOutlet weak var twentyTip: UIButton!
    @IBOutlet weak var numOfPeople: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tipSelected(_ sender: UIButton) {
        zeroTip.isSelected = false
        tenTip.isSelected = false
        twentyTip.isSelected = false
        sender.isSelected = true
        
        let buttuonTitle = sender.currentTitle!
        tip = Double(buttuonTitle.dropLast())!/100
    }
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        peopleNum = Int(sender.value)
        numOfPeople.text = String(peopleNum)
    }

    @IBAction func calculatePressed(_ sender: Any) {
        guard let total = Double(totalSumTF.text ?? "0.0") else { return }
        totalAmount = total
        countSumForEachPerson(totalAmount: totalAmount, tip: tip, people: peopleNum)
        
        let resultViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        resultViewController.modalPresentationStyle = .fullScreen
        self.present(resultViewController, animated: true, completion: nil)
    }
}

