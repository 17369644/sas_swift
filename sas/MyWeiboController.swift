import UIKit;

class MyWeiboController:UIViewController{
    
    override func viewDidLoad(){
        self.view.backgroundColor = UIColor.whiteColor();
        var webView = UIWebView(frame:CGRectMake(0,70,self.view.frame.width,self.view.frame.height - 80));
        var url = NSURL(string: "http://login.weibo.cn/login/?ns=1&revalid=2&backURL=http%3A%2F%2Fweibo.cn%2F&backTitle=%CE%A2%B2%A9&vt=");
        var request = NSURLRequest(URL: url);
        webView.loadRequest(request);
        self.view.addSubview(webView);
    }
    
    // didReceiveMemoryWarning
    override func didReceiveMemoryWarning(){
        
    }
}