//
//  ViewController.swift
//  window-shopper
//
//  Created by Sayooj Sojen on 05/02/19.
//  Copyright © 2019 spell. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: TextFieldView!
    @IBOutlet weak var priceTxt: TextFieldView!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let calcBtn=UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 72))
        calcBtn.backgroundColor=#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(self.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView=calcBtn //inputaccessoryview used to keep this button as an "accessory" while input takes place in the view
        priceTxt.inputAccessoryView=calcBtn
        
        resultLbl.isHidden=true
        hoursLbl.isHidden=true
    }

    @objc func calculate(){
        if let wagePresent=wageTxt.text,let pricePresent=priceTxt.text{//makes sure the textfields arent empty. If they are, it makes sure the calculate func doesnt work
            if let wage=Double(wagePresent),let price=Double(pricePresent){//makes sure the inputs are of type double, to sanitize the input. This prevents injection attacks, as users can still copy paste text into it.
                view.endEditing(true)//forces the onscreen keyboard close
                resultLbl.isHidden=false
                hoursLbl.isHidden=false
                resultLbl.text=String(Wage.calcHours(wage: wage, price: price))
                
            }
            
        }
        
        
        
        
    }
    
    @IBAction func clearFields(_ sender: Any) {
        resultLbl.isHidden=true
        hoursLbl.isHidden=true
        wageTxt.text=""
        priceTxt.text=""
        
    }
    
}

