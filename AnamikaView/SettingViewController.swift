//
//  SettingViewController.swift
//  AnamikaView
//
//  Created by Apple MacBook Pro  on 2/26/20.
//  Copyright © 2020 Apple MacBook Pro . All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
    

    @IBAction func ColorChange(_ sender: UISwitch) { if (sender.isOn == true){
           self.navigationController?.navigationBar.barTintColor = UIColor.blue
           tabBarController?.tabBar.barTintColor = UIColor.blue
           }else{
                               
           self.navigationController?.navigationBar.barTintColor = UIColor.red
           tabBarController?.tabBar.barTintColor = UIColor.red
                             }
                       
                   }
                   override func viewDidLoad() {
                       super.viewDidLoad()
                     self.navigationItem.title = "SettingViewController"

                       // Do any additional setup after loading the view.
                   }
                   

                  

               }
