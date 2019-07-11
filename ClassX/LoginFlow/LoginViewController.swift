//
//  LoginViewController.swift
//  ClassX
//
//  Created by stu-37 on 2019/7/11.
//  Copyright © 2019 stu-37. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate  {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        guard
            // 條件
            let 輸入的文字 = textField.text
            , // 或
            let rangeOfTextToReplace = Range(range, in: 輸入的文字)
            
            // 條件
            
            
            // 條件不成立
            else
        {
            return false
        }
        // 條件不成立
        
        
        // 條件成立
        let substringToReplace = 輸入的文字[rangeOfTextToReplace]
        let count = 輸入的文字.count - substringToReplace.count + string.count
        
        print("tag:\( textField.tag )")
        
        
        if textField.tag == 1 {
            return count <= 5
        }
        else if textField.tag == 2 {
            return count <= 7
        }
        
        return false
        // 條件成立
    }

}
