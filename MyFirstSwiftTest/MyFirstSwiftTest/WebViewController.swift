//
//  WebViewController.swift
//  MyFirstSwiftTest
//
//  Created by julong on 14-10-15.
//  Copyright (c) 2014年 renbing. All rights reserved.
//

import UIKit

class WebViewController: UIViewController ,UIWebViewDelegate{

    var webView:UIWebView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.title = "网页UIWebView"
        self.view.backgroundColor = UIColor.whiteColor()
        // Do any additional setup after loading the view.
        
        //UIWebView
        webView = UIWebView()
        webView.frame = self.view.frame
        webView.scalesPageToFit = true
        webView.allowsInlineMediaPlayback = true
        var webUrl:NSURL = NSURL(string:"http://www.baidu.com/")
        var request :NSURLRequest = NSURLRequest(URL: webUrl)
        webView.loadRequest(request)
        webView.delegate = self
        self.view.addSubview(webView)
        
        //UIBarButtonItem
        var rightBarItem:UIBarButtonItem = UIBarButtonItem(title: "刷新", style: UIBarButtonItemStyle.Done, target: self, action: Selector("rightBarClick"))
        self.navigationItem.rightBarButtonItem = rightBarItem
        
    }

    func rightBarClick()
    {
        //刷新方法
        println("刷新表格")
        webView.reload()
    }
    //UIWebViewDelegate
    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool
    {
        return true
    }
    
    func webViewDidFinishLoad(webView: UIWebView)
    {
        println("加载完成")
    }
     func webView(webView: UIWebView, didFailLoadWithError error: NSError)
    {
        println("加载失败")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
