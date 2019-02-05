//
//  TextFieldView.swift
//  window-shopper
//
//  Created by Sayooj Sojen on 05/02/19.
//  Copyright © 2019 spell. All rights reserved.
//

import UIKit


@IBDesignable //Use this to see these changes live
class TextFieldView: UITextField {
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView(){
        backgroundColor=#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2465753425)
        layer.cornerRadius=5.0
        textAlignment = .center
        
        if placeholder==nil{
            placeholder=" "
        }
        
        let place=NSAttributedString(string: placeholder!, attributes: [.foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)] )
        //Use NSAttributedStrings type which are just strings but with added atributes/properties that can be used to format it. Extremely usefull in UI Dev either in web or apps
        attributedPlaceholder=place //same as "placeholder" but with the NSAttributedString type so it can hold an attributed string
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }

}
