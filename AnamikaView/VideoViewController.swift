//
//  VideoViewController.swift
//  AnamikaView
//
//  Created by Apple MacBook Pro  on 2/26/20.
//  Copyright © 2020 Apple MacBook Pro . All rights reserved.
//

import UIKit

class VideoViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{

    
        override func viewDidLoad() {
            super.viewDidLoad()
             self.navigationItem.title = "VideoViewController"
            // Do any additional setup after loading the view.
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 6
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell =  tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath) as! TableDataClass
            let videourl  = NSURL(string: "https://www.youtube.com/results?search_query=o+amr+desher+mati")
            let requestObj = URLRequest(url: videourl! as URL)
            cell.webView.loadRequest(requestObj)
            
            
            return cell
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 350
        }


    }

