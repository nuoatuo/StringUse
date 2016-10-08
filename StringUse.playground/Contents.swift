//: Playground - noun: a place where people can play

import UIKit

/**
 OC和Swift中字符串的区别
 在OC中字符串类型时NSString,在Swift中字符串类型是String
 OC中字符串@"",Swift中字符串""
 使用 String 的原因
 String 是一个结构体，性能更高
 NSString 是一个 OC 对象，性能略差
 String 支持直接遍历
 Swift 提供了 String 和 NSString 之间的无缝转换
 */

//1.定义字符串
//1>定义不可变字符串:使用let修饰
//let str : String = "hello swift"
let str  = "hello swift"
//str = "hello Objc"

//2>定义可变字符串:使用var修饰
var strM = "hello world"
strM = "Hello China"

//2.获取字符串的长度
let length = str.characters.count

//3.字符串的拼接
//3.1字符串之间的拼接
let str1 = "Hello "
let str2 = "Tom"
let str3 = str1 + str2

//3.2字符串和其他标识符之间的拼接
let name = "why"
let age = 18
let height = 1.88
let infoStr = "my name is \(name), age is \(age), height is \(height)"

//3.3字符串拼接过程的格式化： 03:04
let min = 3
let second = 4
let timeStr = String(format: "%02d:%02d", min, second)

//4.字符串的截取
let urlString = "www.baidu.com"
//4.1方式一：
//将String类型转成NSString类型，再进行截取: as NSSting
let header1 = (urlString as NSString).substring(to: 3)
let range1 = NSMakeRange(4, 5)
let middle1 = (urlString as NSString).substring(with: range1)
let footer1 = (urlString as NSString).substring(from: 10)

//4.2方式二:
//直接使用String类型方法，进行截取
let headerIndex = urlString.index(urlString.startIndex, offsetBy: 3)
let header2 = urlString.substring(to: headerIndex)

let startIndex = urlString.index(urlString.startIndex, offsetBy: 4)
let endIndex = urlString.index(urlString.startIndex, offsetBy: 9)
let range = Range(startIndex..<endIndex)
let middle2 = urlString.substring(with: range)

let footerIndex = urlString.index(urlString.endIndex, offsetBy: -3)
let footer2 = urlString.substring(from: footerIndex)


