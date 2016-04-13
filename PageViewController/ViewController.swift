//
//  ViewController.swift
//  PageViewController
//
//  Created by 赵晓东 on 16/4/13.
//  Copyright © 2016年 ZXD. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPageViewControllerDataSource {
    
    var pageController:UIPageViewController!
    
    var headings = ["私人定制", "饕馆定位", "美食发现"]
    var images = ["foodpin-intro-1", "foodpin-intro-2", "foodpin-intro-3"]
    var footers = ["好店随时加，打造自己的美食向导", "马上找到饕餮大餐之馆的位置", "发现其他吃货的珍藏"]
    
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! ContentViewController).index
        
        index++
        
        return viewControllerAtIndex(index)
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! ContentViewController).index
        index--
        
        return viewControllerAtIndex(index)
    }
    
    
    func viewControllerAtIndex(index: Int) -> ContentViewController? {
        if case 0 ..< headings.count = index {
            //创建一个新视图控制器并传递数据
            let contentVC : ContentViewController = ContentViewController()
            contentVC.imageName = images[index]
            contentVC.heading = headings[index]
            contentVC.footer = footers[index]
            contentVC.index = index
            return contentVC
            
            
        } else {
            return nil
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        pageController = UIPageViewController(transitionStyle: .Scroll, navigationOrientation:.Horizontal, options: [UIPageViewControllerOptionSpineLocationKey:NSNumber(float: 10)])
        pageController.dataSource = self
        self.addChildViewController(pageController)
        self.view.addSubview(pageController.view)
        
        
        //创建第一个页面
        if let startingVC = viewControllerAtIndex(0) {
            pageController.setViewControllers([startingVC], direction: .Forward, animated: true, completion: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

