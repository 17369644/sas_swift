import UIKit

class MySellerLevlViewController:UIViewController,UITableViewDataSource,UITableViewDelegate{
    var oneFArray:NSArray = ["飞秋","千百度","宁化","阿玛尼","路易斯","威登"];
    var twoFArray:NSArray = ["邦威","阿斯顿","怀化","啊蹦"];
    var threeFArray:NSArray = ["美撒","娃娃","啊喂喂","比呢牛"];
    var fourFArray:NSArray = ["美特斯邦威","詹姆斯","阿华田","班尼路"];
    var fiveFArray:NSArray = ["adidas","nike","puma","美津浓","茵宝","杰克琼斯"];
    var tableView   : UITableView?;
    override func viewDidLoad(){
        super.viewDidLoad();
        self.view.backgroundColor = UIColor.whiteColor();
        self.tableView = UITableView(frame:CGRectMake(0,0,self.view.frame.width,self.view.frame.height-20), style:UITableViewStyle.Plain);
        self.tableView!.delegate = self
        self.tableView!.dataSource = self
        self.tableView!.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        self.view?.addSubview(self.tableView);
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int{
        var str:String = self.title;
        var count:Int = 0;
        switch str {
        case "1F":count = oneFArray.count;
        case "2F":count = twoFArray.count;
        case "3F":count = threeFArray.count;
        case "4F":count = fourFArray.count;
        case "5F":count = fiveFArray.count;
        default:count=0;
        }
        return count;
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!{
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell!
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        var str:String = "";
        var title:String = self.title;
        switch title {
        case "1F":str = self.oneFArray.objectAtIndex(indexPath.row) as String;
        case "2F":str = self.twoFArray.objectAtIndex(indexPath.row) as String;
        case "3F":str = self.threeFArray.objectAtIndex(indexPath.row) as String;
        case "4F":str = self.fourFArray.objectAtIndex(indexPath.row) as String;
        case "5F":str = self.fiveFArray.objectAtIndex(indexPath.row) as String;
        default:str = "";
        }
        cell.textLabel.text = str;
        return cell;
    }
    
    // UITableViewDelegate Methods
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!){
        self.tableView!.deselectRowAtIndexPath(indexPath, animated: true)
        var mySellerDetailViewController = MySellerDetailViewController()
        var title:String = self.title;
        var str:String = "";
        switch title {
        case "1F":str = self.oneFArray.objectAtIndex(indexPath.row) as String;
        case "2F":str = self.twoFArray.objectAtIndex(indexPath.row) as String;
        case "3F":str = self.threeFArray.objectAtIndex(indexPath.row) as String;
        case "4F":str = self.fourFArray.objectAtIndex(indexPath.row) as String;
        case "5F":str = self.fiveFArray.objectAtIndex(indexPath.row) as String;
        default:str = "";
        }
        mySellerDetailViewController.title = str;
        self.navigationController.pushViewController(mySellerDetailViewController, animated:true);
    }
    
    
    // didReceiveMemoryWarning
    override func didReceiveMemoryWarning(){
        
    }
}
