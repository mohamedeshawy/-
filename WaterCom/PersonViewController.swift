//
//  PersonViewController.swift
//  WaterCom
//
//  Created by Mohamed Eshawy on 2/1/18.
//  Copyright © 2018 Mohamed Eshawy. All rights reserved.
//

import UIKit

class PersonViewController: UIViewController {

    @IBOutlet weak var bottleImage: UIImageView!
    @IBOutlet weak var carImage: UIImageView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.bottleImage.transform = CGAffineTransform(rotationAngle: CGFloat.pi/4*7)
        self.carImage.transform = CGAffineTransform(rotationAngle: CGFloat.pi/4)
        let font = UIFont.systemFont(ofSize: 20)
        segmentedControl.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.white], for: .normal)
        segmentedControl.setTitleTextAttributes([NSFontAttributeName: font],
                                                for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func indexChange(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex {
        case 1:
            print("Arabic")
        default:
            print("English")
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
