//
//  ViewController.swift
//  LLCycleScrollViewDemo
//
//  Created by Peter Yo on 3月/14/18.
//  Copyright © 2018年 Peter Yo. All rights reserved.
//

import UIKit
import LLCycleScrollView

class ViewController: UIViewController {

  @IBOutlet weak var storyBoardBanner: LLCycleScrollView!

  override func viewDidLoad() {
    super.viewDidLoad()
    
    // 网络图，本地图混合
    let imagesURLStrings = [
      "s1.jpg",
      "http://www.g-photography.net/file_picture/3/3587/4.jpg",
      "s2",
      "http://c.hiphotos.baidu.com/image/w%3D400/sign=c2318ff84334970a4773112fa5c8d1c0/b7fd5266d0160924c1fae5ccd60735fae7cd340d.jpg",
      "http://img3.redocn.com/tupian/20150806/weimeisheyingtupian_4779232.jpg",
      ];
    
    // Storyboard Demo
    self.storyBoardBanner.imagePaths = imagesURLStrings
//    self.storyBoardBanner.titles = titles
    
    // 新增图片显示控制
    self.storyBoardBanner.imageViewContentMode = .scaleToFill
    self.storyBoardBanner.customPageControlStyle = .image
    self.storyBoardBanner.pageControlPosition = .center
    self.storyBoardBanner.pageControlActiveImage = #imageLiteral(resourceName: "dot")
    self.storyBoardBanner.pageControlInActiveImage = #imageLiteral(resourceName: "dottest")
    
    // 是否对url进行特殊字符处理
    self.storyBoardBanner.isAddingPercentEncodingForURLString = true
    
    // 2018-02-25 新增协议
//    self.storyBoardBanner.delegate = self
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

