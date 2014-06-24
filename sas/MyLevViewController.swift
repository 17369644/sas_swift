import UiKit

class MyLevViewController:UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var levArray:NSArray = ["1F","2F","3F","4F","5F"];
    var tableView   : UITableView?;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        //        self.view.backgroundColor = UIColor.redColor();
        self.tableView = UITableView(frame:CGRectMake(0,65,self.view.frame.width,CGFloat(levArray.count) * 50.0), style:UITableViewStyle.Plain);
        self.tableView!.delegate = self
        self.tableView!.dataSource = self
        self.tableView!.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        self.view?.addSubview(self.tableView);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int{
        return levArray.count;
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!{
        //        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell!
        //        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "MyTestCell")
        var str:String = self.levArray.objectAtIndex(indexPath.row) as String;
        var imageName = "";
        cell.textLabel.text = str;
        switch str {
        case "1F":imageName="0.png";cell.detailTextLabel.text = "皮鞋馆";
        case "2F":imageName="1.png";cell.detailTextLabel.text = "青春馆";
        case "3F":imageName="2.png";cell.detailTextLabel.text = "少淑馆";
        case "4F":imageName="3.png";cell.detailTextLabel.text = "绅士馆";
        default:imageName="4.png";cell.detailTextLabel.text = "运动馆";
        }
        cell.image = UIImage(named: imageName);
        cell.text = str;
        
        return cell;
        
    }
    
    // UITableViewDelegate Methods
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!){
        self.tableView!.deselectRowAtIndexPath(indexPath, animated: true)
        var mySellerLevlViewController = MySellerLevlViewController()
        mySellerLevlViewController.title = self.levArray.objectAtIndex(indexPath.row)  as String;
        self.title = self.levArray.objectAtIndex(indexPath.row)  as String;
        self.navigationController.pushViewController(mySellerLevlViewController, animated:true)
    }
}