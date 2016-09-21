# TransitionSegment <br>  

![github](https://github.com/jiabinxu/TransitionSegment/blob/master/TransitionSegment/segment2.gif?raw=true "example")<br> 

### How To Use
```Swift
 let titles:[String] = ["推荐","专题","真相","两性","不孕不育","一图读懂","肿瘤","慢病","营养","母婴"]
        
        let rect = CGRect(x:0,y:64,width:screenWidth,height:35)
        
        let configure = SegmentConfigure(textSelColor:UIColor.white, highlightColor:UIColor.red,titles:titles)
        
        segmentView = TransitionSegmentView.init(frame: rect, configure: configure)
        
        segmentView?.backgroundColor = UIColor.yellow
        
        ///设置闭包
        segmentView?.setScrollClosure(tempClosure: { (index) in
            
            let point = CGPoint(x:CGFloat(index)*screenWidth,y:0)
            self.scrollContainer?.setContentOffset(point, animated: true)
            
        })
        
        self.view.addSubview(segmentView!)
```
### scrollview代理方法调用
```Swift
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
```


### License
TransitionSegment is available under the MIT license. See the LICENSE file for more info.

