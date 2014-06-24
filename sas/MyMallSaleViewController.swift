import UiKit

class MyMallSaleViewController:UIViewController,UITableViewDataSource,UITableViewDelegate {
    var saleArray:NSArray = ["3.8妇女节","4.4清明节活动","3.15活动"];
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
        return saleArray.count;
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!{
//        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell!;
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "MyTestCell")

        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator;
        cell.textLabel.text = self.saleArray.objectAtIndex(indexPath.row) as String;
        var imageName = "";
        switch indexPath.row {
        case 0:imageName="3_8.jpg";cell.detailTextLabel.text = "已过期";cell.detailTextLabel.textColor = UIColor.orangeColor();
        case 1:imageName="qmj.jpg";cell.detailTextLabel.text = "未过期";cell.detailTextLabel.textColor = UIColor.greenColor();
        case 2:imageName="315.jpg";cell.detailTextLabel.text = "已过期";cell.detailTextLabel.textColor = UIColor.orangeColor();
        default:imageName="";
        }
        
        cell.image = UIImage(named: imageName);
        return cell;
        
        
    }
    
    // UITableViewDelegate Methods
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!){
        self.tableView!.deselectRowAtIndexPath(indexPath, animated: true)
        var myMallSaleDetailViewController = MyMallSaleDetailViewController()
        myMallSaleDetailViewController.title = self.saleArray.objectAtIndex(indexPath.row) as String;
        self.navigationController.pushViewController(myMallSaleDetailViewController, animated:true);
    }
    
    
    // didReceiveMemoryWarning
    override func didReceiveMemoryWarning(){
        
    }
}