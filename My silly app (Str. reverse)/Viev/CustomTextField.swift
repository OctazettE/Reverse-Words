//
//  CustomTextField.swift
//  My silly app (Str. reverse)
//
//  Created by Dmytro Popelnukh on 20.12.2022.
//

import UIKit

@IBDesignable

class CustomTextField: UITextField {
    
//MARK: -
    
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    
//MARK: -
    
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2525351821)
        layer.cornerRadius = 5
        textAlignment = .center
        
        
        clipsToBounds = true
        
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.4003518212)
        }
    }
}
