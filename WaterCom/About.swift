//
//  About.swift
//  WaterCom
//
//  Created by Mohamed Eshawy on 2/2/18.
//  Copyright © 2018 Mohamed Eshawy. All rights reserved.
//

import UIKit

class About: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.menuButton.target = revealViewController()
        self.menuButton.action = #selector(SWRevealViewController.rightRevealToggle(_:))

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
