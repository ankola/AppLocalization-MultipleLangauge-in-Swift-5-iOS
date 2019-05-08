//
//  ViewController.swift
//  Applocal
//
//  Created by Savan Ankola on 4/24/19.
//  Copyright © 2019 Latitude. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func segment(_ sender: Any) {
        if (sender as AnyObject).selectedSegmentIndex == 0 {
            SetValue(lan: "en")

        } else if (sender as AnyObject).selectedSegmentIndex == 1  {
            SetValue(lan: "ar")
            
        } else {
            SetValue(lan: "hi")
        }
    }
    
    func SetValue(lan : String) {
        let l = "Key_ABOUT_US".LocalizableString(lan: lan)
        print(l)
        self.lblDisplay.text = l
    }
}

//Get Localize String
extension String {
    func LocalizableString(lan: String) -> String {
        let pathn = Bundle.main.path(forResource: lan, ofType: "lproj")
        let bundle = Bundle(path: pathn ?? "")
        return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
    }
}
