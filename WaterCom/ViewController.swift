//
//  ViewController.swift
//  WaterCom
//
//  Created by Mohamed Eshawy on 2/1/18.
//  Copyright © 2018 Mohamed Eshawy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var companyView: UIView!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var personView: UIView!
    @IBOutlet weak var personLabel: UILabel!
    @IBOutlet weak var loginImage: UIImageView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.companyView.transform = CGAffineTransform(rotationAngle: CGFloat.pi/4*7)
        self.companyLabel.transform = CGAffineTransform(rotationAngle: CGFloat.pi*2 - CGFloat.pi/4*7)
        self.personView.transform = CGAffineTransform(rotationAngle: CGFloat.pi/4)
        self.personLabel.transform = CGAffineTransform(rotationAngle: CGFloat.pi*2 - CGFloat.pi/4)
        self.loginView.transform = CGAffineTransform(rotationAngle: CGFloat.pi/4*7)
        self.loginLabel.transform = CGAffineTransform(rotationAngle: CGFloat.pi*2 - CGFloat.pi/4*7)
        self.loginImage.transform = CGAffineTransform(rotationAngle: CGFloat.pi*2 - CGFloat.pi/4*7)
        let font = UIFont.systemFont(ofSize: 20)
        segmentedControl.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.white], for: .normal)
        segmentedControl.setTitleTextAttributes([NSFontAttributeName: font],
                                                for: .normal)
        let gestureLogin = UITapGestureRecognizer(target: self, action:  #selector (self.loginAction))
        self.loginView.addGestureRecognizer(gestureLogin)
        
        let gesturePerson = UITapGestureRecognizer(target: self, action:  #selector (self.personAction))
        self.personView.addGestureRecognizer(gesturePerson)
        
        let gestureCompany = UITapGestureRecognizer(target: self, action:  #selector (self.companyAction))
        self.companyView.addGestureRecognizer(gestureCompany)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func loginAction(sender:UITapGestureRecognizer){
        performSegue(withIdentifier: "login", sender: self)
        
    }
    func personAction(sender:UITapGestureRecognizer){
        performSegue(withIdentifier: "registerPerson", sender: self)
        
    }
    func companyAction(sender:UITapGestureRecognizer){
        performSegue(withIdentifier: "registerCompany", sender: self)
        
    }
    

    @IBAction func indexChange(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex {
        case 1: //Arabic
            print("Arabic")
        default: //English
            print("English")
        }
    }
 

}

