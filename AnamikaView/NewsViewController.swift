//
//  NewsViewController.swift
//  AnamikaView
//
//  Created by Apple MacBook Pro  on 2/26/20.
//  Copyright © 2020 Apple MacBook Pro . All rights reserved.
//

import UIKit
import WebKit

class NewsViewController: UIViewController ,WKNavigationDelegate{

      var webview: WKWebView!

      override func viewDidLoad() {
          super.viewDidLoad()
       self.navigationItem.title = "NewsViewController"
          webview = WKWebView()
              webview.navigationDelegate = self
              view = webview
              let url = URL(string: "https://www.w3newspapers.com/bangladesh/")!
              webview.load(URLRequest(url: url))
              webview.allowsBackForwardNavigationGestures = true
          }
      }
      
