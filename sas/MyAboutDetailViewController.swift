import Foundation
import UIKit
class MyAboutDetailViewController:UIViewController{
    
    override func viewDidLoad(){
        self.view!.backgroundColor = UIColor.whiteColor();
        if self.title == "联系我们"{
            
        }else{
            var image:UIImage?;
            if self.title == "商场介绍" || self.title == "瑞成介绍"{
                image     = UIImage(named: "rcjs.jpg");
            }else if self.title == "世纪卡友"{
                image     = UIImage(named: "cardfriend.jpg");
            }else if self.title == "关于我们"{
                image     = UIImage(named: "about.png");
            }
            var imageView = UIImageView(frame: CGRectMake(0, 65, self.view.frame.width, self.view.frame.height-65));
            imageView.image = image;
            self.view.addSubview(imageView);
        }
    }
    
    // didReceiveMemoryWarning
    override func didReceiveMemoryWarning(){
        
    }
}
