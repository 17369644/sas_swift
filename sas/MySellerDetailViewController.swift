import Foundation
import UIKit

class MySellerDetailViewController:UIViewController{
    
    override func viewDidLoad(){
        self.view!.backgroundColor = UIColor.whiteColor();
        //图片
        var image = UIImage(named: "ICON.png");
        var imageView = UIImageView(frame: CGRectMake((CGRectGetWidth(self.view.bounds) - image.size.width) / 6.0, 80, image.size.width, image.size.height));
        imageView.image = image;
        self.view.addSubview(imageView);
        //商家标题
        var label = UILabel(frame:CGRectMake(imageView.frame.width + image.size.width + 30, imageView.frame.height - 20, 100, 100));
        label.backgroundColor = UIColor.clearColor();
        label.textAlignment = NSTextAlignment.Center;
        label.font = UIFont.systemFontOfSize(18);
        label.text = self.title;
        self.view.addSubview(label);
        
        //商家标题
        var tellabel = UILabel(frame:CGRectMake(label.frame.width, label.frame.height - 25, 200, 100));
        tellabel.backgroundColor = UIColor.clearColor();
        tellabel.textAlignment = NSTextAlignment.Center;
        tellabel.font = UIFont.systemFontOfSize(16);
        tellabel.text = "023-62555555";
        self.view.addSubview(tellabel);
        //商家文字介绍
        var textView = UITextView(frame:CGRectMake(10.0, 150.0, 300.0, self.view.frame.height - 180));
        textView.backgroundColor = UIColor(red: 251/255, green: 173/255, blue: 123/255, alpha: 0.2);
        textView.editable = false;
        textView.font = UIFont.systemFontOfSize(16);
        textView.text = "    新世纪百货从开业之初，在重庆零售业中率先创立普通话服务、早晚迎送宾制度、十五日退换货制度，实行全程信息化管理，搭建起一套全新的管理流程及服务平台。今年公司把工作重点放到“构建和谐社会，提升服务品质”上，从为消费者提供多元化的个性服务，如：色彩服务、母婴室、营业员星级服务评定等，再到服务的精品化，新世纪百货在完成服务三级跳的同时，将优质服务扩展了社会功能。奔赴璧山赈灾、优质服务进社区、母亲节搭建“幸福工程——救助贫困母亲”、“为希望续航” 捐赠“爱心基金”、为农民工上门服务……新世纪百货积极关注弱势群体，搭建广泛的慈善平台，唤起社会公众的爱心，始终坚持以积极心态回馈社会。让新世纪百货的“诚实经营 真情服务”的服务理念得到更充分体现，并且通过不断更新，延伸了服务的内涵，扩展了服务的外延，提升服务的质量和价值。";
        self.view.addSubview(textView);
        
    }
    
    // didReceiveMemoryWarning
    override func didReceiveMemoryWarning(){
        
    }
}
