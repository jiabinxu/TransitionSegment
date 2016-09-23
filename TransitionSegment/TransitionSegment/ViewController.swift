//
//  ViewController.swift
//  TransitionSegment
//
//  Created by wuliupai on 16/9/21.
//  Copyright © 2016年 wuliu. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    var segmentView:TransitionSegmentView?
    
    var scrollContainer: UIScrollView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configNavi()
        
        self.configSegment()
        
        self.configScrollView()
        
    }
    
    
    func configNavi()  {

        self.title = "TransitionSegmentView"
    }
    
    
    //配置segment
    func configSegment() {
        
        let titles:[String] = ["推荐","专题","真相","两性","不孕不育","一图读懂","肿瘤","慢病","营养","母婴"]
        
        let rect = CGRect(x:0,y:64,width:screenWidth,height:35)
        
        let configure = SegmentConfigure(textSelColor:UIColor.white, highlightColor:UIColor.red,titles:titles)
        
        segmentView = TransitionSegmentView.init(frame: rect, configure: configure)
        
        ///segment的label被点击时调用
        segmentView?.setScrollClosure(tempClosure: { (index) in
            
            let point = CGPoint(x:CGFloat(index)*screenWidth,y:0)
            self.scrollContainer?.setContentOffset(point, animated: true)
            
        })
        
        self.view.addSubview(segmentView!)
    }
    
    //配置scrollview
    func configScrollView()  {
         //scrollview容器
        scrollContainer = UIScrollView.init(frame: CGRect(x:0,y:99,width:screenWidth,height:screenHeight-99))
        
        for index in 0...9 {
            
            let vc: UIViewController = UIViewController.init()
            vc.view.frame = CGRect(x:CGFloat(index)*screenWidth,y:0,width:(scrollContainer?.bounds.width)!,height:(scrollContainer?.bounds.height)!)
            
            let temp1 = Float(arc4random()%255)/255
            let temp2 = Float(arc4random()%255)/255
            let temp3 = Float(arc4random()%255)/255
            vc.view.backgroundColor = UIColor.init(colorLiteralRed: temp1, green: temp2, blue: temp3, alpha: 1)
            
            //添加子控制器
            scrollContainer?.addSubview(vc.view)
            self.addChildViewController(vc)
            
        }
        
        //配置scrollview容器
        scrollContainer?.contentSize = CGSize(width:10*screenWidth,height:0)
        scrollContainer?.showsHorizontalScrollIndicator = true
        scrollContainer?.delegate = self
        scrollContainer?.isPagingEnabled = true
        self.automaticallyAdjustsScrollViewInsets = false
        self.view.addSubview(scrollContainer!)
        
    }

}



extension ViewController:UIScrollViewDelegate{

    
    //scollview滑动代理
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        let point = scrollView.contentOffset
        
        segmentView?.segmentWillMove(point: point)
        
        
    }
    
    //scollview开始减速代理
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        self.scrollViewDidEndScrollingAnimation(scrollView)
    }
    
    
    //scollview停止减速代理
    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        
        let point = scrollView.contentOffset
        
        segmentView?.segmentDidEndMove(point: point)
    }
    
}



