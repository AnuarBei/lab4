//
//  infoVC.swift
//  lab4
//
//  Created by Ануар Беисов on 29.03.2021.
//

import UIKit
import WebKit
class infoVC: UIViewController,WKNavigationDelegate {
    
    
    var webView: WKWebView!
        var myUrl: String?
        
        override func loadView() {
            webView = WKWebView()
            webView.navigationDelegate = self
            view = webView
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            let url = URL(string: myUrl ?? "https://www.vk.com")!
            webView.load(URLRequest(url: url))
            webView.allowsBackForwardNavigationGestures = true
            self.title = "google"
            
            
        }
    
    
    
   
   
        

        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


