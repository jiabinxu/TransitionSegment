//
//  DXMacros.swift
//  dxy
//
//  Created by wuliupai on 16/9/16.
//  Copyright © 2016年 wuliupai. All rights reserved.
//

import UIKit

//let  version = (UIDevice.currentDevice().systemVersion as NSString).floatValue
//
// 屏幕高度
let screenHeight = UIScreen.main.bounds.height
// 屏幕宽度
let screenWidth = UIScreen.main.bounds.width
//// 默认图片
//let defaultImg = UIImage(named: "photo_define")
//// NSUserDefault
//let userDefault = NSUserDefaults.standardUserDefaults()
//// 通知中心
//let notice = NSNotificationCenter.defaultCenter()
////判断是不是plus
//let currentModeSize = UIScreen.mainScreen().currentMode?.size
//let isPlus = UIScreen.instancesRespondToSelector("currentMode") ? CGSizeEqualToSize(CGSizeMake(1242, 2208), currentModeSize!) : false
////判断字符串是否为空
//func trimString(#str:String)->String{
//    var nowStr = str.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
//    return nowStr
//}
//
////去除空格和回车
//func trimLineString(#str:String)->String{
//    var nowStr = str.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
//    return nowStr
//}
////根据键盘监控  获取键盘高度
//func getKeyBoardHeight(#aNotification:NSNotification)->CGFloat{
//    var uInfo   = aNotification.userInfo as NSDictionary!
//    let avalue = uInfo["UIKeyboardFrameEndUserInfoKey"] as NSValue
//    let keyrect : CGRect = avalue.CGRectValue()
//    let keyheight : CGFloat = keyrect.size.height;
//    return keyheight
//}
////获取目录下存储的json文件并解析为集合
//func getNativeJson(#filename : String,#fileext : String)->AnyObject{
//    let pathsBun = NSBundle.mainBundle()
//    let paths = pathsBun.pathForResource(filename, ofType : fileext)
//    var errors:NSError?
//    var content : NSData = NSData(contentsOfFile: paths!, options : .DataReadingMappedIfSafe, error: nil)!
//    var returneddata: AnyObject?  = NSJSONSerialization.JSONObjectWithData(content as NSData, options:NSJSONReadingOptions.MutableContainers, error:&errors)
//    return returneddata!
//}
////消息提醒
//func showAlertView(#title:String,#message:String)
//{
//    var alert = UIAlertView()
//    alert.title = title
//    alert.message = message
//    alert.addButtonWithTitle("好")
//    alert.show()
//}
////获取本地存储数据
//func get_userDefaults(#key : String)->AnyObject?{
//    
//    var saveStr : AnyObject! = userDefault.objectForKey(key)
//    saveStr = (saveStr == nil) ? "" : saveStr
//    return saveStr
//}
////存储数据
//func save_userDefaults(#key : String,#value:AnyObject?){
//    
//    userDefault.setObject(value!, forKey:key)
//}
////字符串转数组
//func stringToArray(#str:String)->NSArray{
//    var dataArray:[String] = []
//    for items in str{
//        dataArray.append("\(items)")
//    }
//    return dataArray
//}
