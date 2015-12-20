//
//  ViewController.swift
//  webrequest-test
//
//  Created by Todd Fields on 2015-12-19.
//  Copyright © 2015 Todd Fields. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

  @IBOutlet weak var container:UIView!
  var webview: WKWebView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
   
    webview = WKWebView()
    container.addSubview(webview)
  }
  
  override func viewDidAppear(animated: Bool) {
    
    let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
    webview.frame = frame
    
    loadRequest("https://www.google.com")
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func loadRequest(urlStr: String) {
    
    let url = NSURL(string: urlStr)!
    let request = NSURLRequest(URL: url)
    webview.loadRequest(request)
  }

  @IBAction func loadSwift(sender: AnyObject) {
    
    loadRequest("https://developer.apple.com/swift/blog/")
  }
  
  @IBAction func loadGossip(sender: AnyObject) {
    
    loadRequest("http://www.tmz.com")
  }
  
  @IBAction func loadSteak(sender: AnyObject) {
    
    loadRequest("http://www.foodrepublic.com/2013/01/23/what-your-steak-really-says-about-you/")
  }

}

