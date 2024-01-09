//
//  ViewController.swift
//  MovieSearch
//
//  Created by Нурсат Шохатбек on 08.01.2024.
//

import UIKit
import WebKit
import SVProgressHUD

class ViewController: UIViewController, WKNavigationDelegate {
    @IBOutlet weak var webView: WKWebView!
    
    
    var movie = AnimeNaruto()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        webView.navigationDelegate = self
        
        let url = URL(string: movie.url)
        
        let urlrequest = URLRequest(url: url!)
        
        webView.load(urlrequest)
    }
  
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!){
        SVProgressHUD.show()
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!){
        SVProgressHUD.dismiss()
    }
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error){
        SVProgressHUD.dismiss()
    }
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error){
        SVProgressHUD.dismiss()
    }

}

