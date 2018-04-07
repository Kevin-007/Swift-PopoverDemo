//
//  ViewController.swift
//  Swift页面跳转Demo
//
//  Created by Gavin Huang on 2018/4/7.
//  Copyright © 2018年 Gavin Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let url = URL.init(string: "https://www.660pp.com") else { return }
        let request = URLRequest.init(url: url)
        self.webView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- 扫码付费，拍照找车，添加好友viewController exit
    @IBAction func close(segue: UIStoryboardSegue) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PopoverSegueId" {
            let popoverViewController = segue.destination
            popoverViewController.popoverPresentationController!.delegate = self
        }
    }
}

extension ViewController: UIPopoverPresentationControllerDelegate {
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.none
    }
    
}


