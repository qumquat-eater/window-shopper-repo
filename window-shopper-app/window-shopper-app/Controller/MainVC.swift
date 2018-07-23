//
//  ViewController.swift
//  window-shopper-app
//
//  Created by Ferdinand Becker on 20/07/2018.
//  Copyright © 2018 Ferdinand Becker. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5640075203, blue: 0.1397576612, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView=calcBtn
        priceTxt.inputAccessoryView=calcBtn
        
        resultLbl.isHidden=true
        hoursbl.isHidden=true
    }

    @objc func calculate(){
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text{
            if let wage = Double(wageTxt), let price = Double(priceTxt){
                view.endEditing(true)
                resultLbl.isHidden=false
                hoursbl.isHidden=false
                
                resultLbl.text="\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }

    @IBAction func clearCalcPressed(_ sender: Any) {
        resultLbl.isHidden=true
        hoursbl.isHidden=true
        wageTxt.text=""
        priceTxt.text=""
        
    }
}

