//
//  TextFieldView.swift
//  window-shopper
//
//  Created by Sayooj Sojen on 05/02/19.
//  Copyright © 2019 spell. All rights reserved.
//

import UIKit

//Use this to see these changes live
@IBDesignable
class TextFieldView: UITextField {
    
    override func draw(_ rect: CGRect) {//implementing empty drawrect will cause performance issues
        let size: CGFloat=20
        let currencyLabel=UILabel(frame: CGRect(x: 5, y: (frame.height/2)-size/2, width: size, height: size))//x y reference starting from the top left corner of the text fields
        currencyLabel.backgroundColor=#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.7979184503)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor=#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLabel.layer.cornerRadius=5
        currencyLabel.clipsToBounds=true
        
        let formatVar=NumberFormatter()
        formatVar.numberStyle = .currency
        formatVar.locale = .current
        currencyLabel.text=formatVar.currencySymbol
        
        addSubview(currencyLabel)//add currenclyLabel view as a subview to the main UITextField
    }
    
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
        
        clipsToBounds=true
        
        if placeholder==nil{
            placeholder=" "
        }
        
        let place=NSAttributedString(string: placeholder!, attributes: [.foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)] )
        //Use NSAttributedStrings type which are just strings but with added atributes/properties that can be used to format it. Extremely usefull in UI Dev either in web or apps
        attributedPlaceholder=place //same as "placeholder" but with the NSAttributedString type so it can hold an attributed string
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }

}
