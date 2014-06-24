import Foundation
import UIKit

class MyMainViewController:UITabBarController{
    /*全局变量定义*/
    let itemArray = ["首页","商家","微博","更多"];//主题
    let tabBarBGColor:UIColor =  UIColor(red:251/255.0, green:173/255.0,blue:69/255.0,alpha: 1);//导航背景色
    var myTabbar :UIView?;
    var slider :UIView?;
    //初始化方法
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
        self.title = "首页"
    }
    
    override func viewDidLoad(){
        super.viewDidLoad();
        setupViews()//初始化导航按钮
        initViewControllers();//初始化每页视图
    }
    
    //初始化导航按钮
    func setupViews(){
        self.automaticallyAdjustsScrollViewInsets = false;//自动改变滚动视图
        self.view!.backgroundColor = UIColor.whiteColor();//背景色改为白色
        self.tabBar.hidden = true;
        var width = self.view.frame.size.width;//当前视图宽度
        var height = self.view.frame.size.height;//当前视图高度
        self.myTabbar = UIView(frame: CGRectMake(0,height-49,width,49));//new 导航选项卡
        self.myTabbar!.backgroundColor = tabBarBGColor//导航背景色
        
        self.slider = UIView(frame:CGRectMake(0,0,80,49));
        self.slider!.backgroundColor = UIColor.whiteColor()//选中导航背景色
        self.myTabbar!.addSubview(self.slider);
        self.view.addSubview(self.myTabbar);
        
        for index in 0..self.itemArray.count {
            var button  = UIButton.buttonWithType(UIButtonType.Custom) as UIButton;
            var btnWidth = (CGFloat)(index*80);
            button.frame = CGRectMake(btnWidth, 0,80,49);
            button.tag = index + 100;
            var title = self.itemArray[index];//按钮文字
            button.setTitle(title, forState: UIControlState.Normal)
            button.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)//普通时的颜色
            button.setTitleColor(tabBarBGColor, forState: UIControlState.Selected)//选中时的颜色
            //按钮点击事件
            button.addTarget(self, action: "tabBarButtonClicked:", forControlEvents: UIControlEvents.TouchUpInside)
            self.myTabbar?.addSubview(button)
            if index == 0{
                button.selected = true;//默认选中
            }
        }
    }
    
    //初始化每页视图
    func initViewControllers(){
        var vc1 = MyMainPageViewController();
        var vc2 = MyLevViewController();
        var vc3 = MyWeiboController();
        var vc4 = MyAboutViewController();
        self.viewControllers = [vc1,vc2,vc3,vc4];
    }
    
    //按钮点击事件
    func tabBarButtonClicked(sender:UIButton){
        var index = sender.tag; //拿到当前点击按钮的tag
        //如果当前tag相等，那么就默认为选中
        for i in 0..self.itemArray.count {
            var button = self.view.viewWithTag(i+100) as UIButton
            if button.tag == index{
                button.selected = true
            }else{
                button.selected = false
            }
        }
        
        UIView.animateWithDuration( 0.3,{
            self.slider!.frame = CGRectMake(CGFloat(index-100)*80,0,80,49)
            });
        self.title = itemArray[index-100] as String;//根据tag拿到数组里面的title，然后修改当前view的title
        self.selectedIndex = index-100
    }
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}
