import Foundation
import UIKit


enum MyTableViewControllerType : Int {
    case MainPage
    case Shop
    case Weibo
    case About
}

class MyTableViewController:UIViewController,UITableViewDelegate,UITableViewDataSource{
    var dataArray = NSMutableArray();
    var type:MyTableViewControllerType = .MainPage

    override func viewDidLoad()
    {
        super.viewDidLoad();
    }
    
    override func viewWillDisappear(animated: Bool)
    {
        super.viewWillDisappear(animated)
        NSNotificationCenter.defaultCenter().removeObserver(self, name: "imageViewTapped", object:nil)
        
    }
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "imageViewTapped:", name: "imageViewTapped", object: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView?, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return self.dataArray.count
    }
    
    
    func tableView(tableView: UITableView?, cellForRowAtIndexPath indexPath: NSIndexPath?) -> UITableViewCell? {
        
//        var cell = tableView?.dequeueReusableCellWithIdentifier(identifier, forIndexPath: indexPath) as? YRJokeCell
//        var index = indexPath!.row
//        var data = self.dataArray[index] as NSDictionary
//        cell!.data = data
        return UITableViewCell();
    }
}