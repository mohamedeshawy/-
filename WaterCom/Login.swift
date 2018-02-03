//
//  Login.swift
//  WaterCom
//
//  Created by Mohamed Eshawy on 2/3/18.
//  Copyright © 2018 Mohamed Eshawy. All rights reserved.
//

import UIKit

class Login: UIViewController {
    var checked = false

    @IBOutlet weak var checkBoxButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func checkBox(_ sender: Any) {
        if !checked {
        self.checkBoxButton.setImage(UIImage(named: "checked.png"), for: .normal)
            checked=true
        }
        else {
            self.checkBoxButton.setImage(UIImage(named: "unchecked.png"), for: .normal)
            checked=false

        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
