import Foundation
import UIKit

class MyAboutViewController:UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    var items:NSArray = ["商场介绍", "联系我们", "世纪卡友", "关于我们"];
    var tableView   : UITableView?;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        self.tableView = UITableView(frame:CGRectMake(0,65,self.view.frame.width,CGFloat(items.count) * 50.0), style:UITableViewStyle.Plain);
        self.tableView!.delegate = self
        self.tableView!.dataSource = self
        self.tableView!.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        self.view?.addSubview(self.tableView);
    }
    //返回行数
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int{
        return self.items.count;
    }
    
    
    //返回内容
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!{
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell!
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        cell.textLabel.text = self.items.objectAtIndex(indexPath.row) as String;
        return cell;
    }
    
    // UITableViewDelegate Methods
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!)
    {
        self.tableView!.deselectRowAtIndexPath(indexPath, animated: true)
        var myAboutDetailViewController = MyAboutDetailViewController()
        myAboutDetailViewController.title = self.items.objectAtIndex(indexPath.row)  as String;
        self.navigationController.pushViewController(myAboutDetailViewController, animated:true);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}