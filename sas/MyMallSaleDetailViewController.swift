import UIKit

class MyMallSaleDetailViewController:UIViewController{
    let imageWidth:CGFloat = 135;
    let imageHeight:CGFloat = 135;

    override func viewDidLoad(){
        self.view!.backgroundColor = UIColor.whiteColor();
        
        //活动时间
        var tellabel = UILabel(frame:CGRectMake((self.view.frame.width - 300)/2, 70, 300, 30));
        tellabel.backgroundColor = UIColor.clearColor();
        tellabel.textAlignment = NSTextAlignment.Center;
        tellabel.font = UIFont.systemFontOfSize(12);
        tellabel.text = "活动时间：2014-03-06至2014-03-10";
        self.view.addSubview(tellabel);

        //活动图片
        var title:String = self.title;
        var imagePath:String = "";
        switch title {
        case "3.8妇女节":imagePath="3_8.jpg";
        case "4.4清明节活动":imagePath="qmj.jpg";
        case "3.15活动":imagePath="315.jpg";
        default:"";
        }
        var image = UIImage(named: imagePath);
        var imageView = UIImageView(frame: CGRectMake((self.view.frame.width - imageWidth)/2, 100, imageWidth, imageHeight));
        imageView.image = image;
        self.view.addSubview(imageView);
        
        //活动内容文字介绍
        var textView = UITextView(frame:CGRectMake((self.view.frame.width - 300)/2, 250, 300.0, self.view.frame.height - 260));
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
