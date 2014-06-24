import UiKit

class MyMainPageViewController:UIViewController {
    
    let imageWidth:CGFloat = 270;
    let imageHeight:CGFloat = 270;
    let imageNameArray = ["3_8.jpg","qmj.jpg","315.jpg"];
    var segmentControl:UISegmentedControl = UISegmentedControl(items:["瑞成介绍", "瑞成活动", "品牌活动"]);
    override func viewDidLoad() {
        super.viewDidLoad()
        //三项导航
//        segmentControl = UISegmentedControl(items:["瑞成介绍", "瑞成活动", "品牌活动"])
        segmentControl.frame = CGRectMake((self.view.frame.width-300)/2, self.view.frame.height/2+130, 300.0, 50.0);
        segmentControl.addTarget(self, action: "segmentControlAction:", forControlEvents: UIControlEvents.ValueChanged);
        self.view.addSubview(segmentControl);
        //图片轮循
        var scrollView = UIScrollView(frame:CGRectMake((self.view.frame.width-imageWidth)/2, 80.0, imageWidth, imageHeight))
        scrollView.pagingEnabled = true;
        scrollView.showsVerticalScrollIndicator = false;
        self.view.addSubview(scrollView);
        //初始化轮循中的图片
        initImage(scrollView);
        scrollView.contentSize = CGSizeMake(CGFloat(self.imageNameArray.count) * imageWidth, imageHeight)//轮循几张图片
        self.view.addSubview(scrollView)
    }
    
    //三项导航变换事件
    func segmentControlAction(sender:UISegmentedControl){
        var index = sender.selectedSegmentIndex;
        switch index {
            case 0:mallIntroduce(sender.titleForSegmentAtIndex(index));//商场活动
            case 1:mallSale(sender.titleForSegmentAtIndex(index));//进入商场活动
            case 2:"";
            default: "";
        }        
    }
    
    //进入商场介绍
    func mallIntroduce(title:String){
        var myAboutDetailViewController = MyAboutDetailViewController()
        myAboutDetailViewController.title = title;
        println(title)
        self.navigationController.pushViewController(myAboutDetailViewController, animated:true);
    }
    
    //进入商场活动
    func mallSale(title:String){
        var myMallSaleViewController = MyMallSaleViewController()
        myMallSaleViewController.title = title;
        self.navigationController.pushViewController(myMallSaleViewController, animated:true);
    }
    
    //初始化轮循中的图片
    func initImage(scrollView:UIScrollView){
        var fx: CGFloat = 0.0;
        var imageName:String = "";
        for(var i = 0; i < self.imageNameArray.count; i++){
            var image = UIImage(named: imageNameArray[i]);//拿到对应的图片
            var imageView = UIImageView(frame:CGRectMake((fx + CGFloat(i)) * imageWidth, 0.0, imageWidth,imageHeight));
            imageView.image = image;
            scrollView.addSubview(imageView);
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
