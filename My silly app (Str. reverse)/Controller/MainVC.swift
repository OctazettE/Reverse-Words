//
//  ViewController.swift
//  My silly app (Str. reverse)
//
//  Created by Dmytro Popelnukh on 20.12.2022.
//

import UIKit

class MainVC: UIViewController {
    
    
    @IBOutlet weak var toReverse: CustomTextField!
    @IBOutlet weak var resultLBL: UILabel!
    @IBOutlet weak var clearOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let justDoItBTN = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        justDoItBTN.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        justDoItBTN.alpha = 0.6
        justDoItBTN.setTitle("Just Do IT", for: .normal)
        justDoItBTN.setTitleColor(.white, for: .normal)
        justDoItBTN.addTarget(self, action: #selector(MainVC.justDoIt), for: .touchUpInside)
        justDoItBTN.layer.cornerRadius = 5
        
        
        toReverse.inputAccessoryView = justDoItBTN
        
        resultLBL.isHidden = true
        clearOutlet.isHidden = true
        

    }

    
    

    
    @objc func justDoIt() {
        if let text = toReverse.text {
            resultLBL.text = reverseString(str: text)
            view.endEditing(true)
            resultLBL.isHidden = false
            clearOutlet.isHidden = false
            
        }
    }
    
    
    @IBAction func clearPressed(_ sender: UIButton) {
        
        toReverse.text = ""
        resultLBL.isHidden = true
        clearOutlet.isHidden = true
        
        
    }
    
    
    
    
    func reverseString(str: String) -> String {
        return str.components(separatedBy: " ").compactMap {
            return String($0.reversed())
        }.joined(separator: " ")
        
    }
    
    
    
    
}

