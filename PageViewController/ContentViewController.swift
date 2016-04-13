//
//  ContentViewController.swift
//  PageViewController
//
//  Created by 赵晓东 on 16/4/13.
//  Copyright © 2016年 ZXD. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {
    
    
    var index = 0
    var heading = ""
    var footer = ""
    var imageName = ""
    
    var pageCtrl: UIPageControl!
    var labelHeading: UILabel!
    var labelFooter: UILabel!
    var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.whiteColor()
        
        imageView = createImageView(CGRectMake(30, 75, WIDTH-60, 244), ImageName: imageName)
        self.view.addSubview(imageView)
        
        
        labelHeading = createLabel(CGRectMake(20, 30, WIDTH-40, 45), Font: 30, Text: heading)
        labelHeading.textAlignment = NSTextAlignment.Center
        labelHeading.textColor = UIColor.blackColor()
        self.view.addSubview(labelHeading)
        
        
        
        labelFooter = createLabel(CGRectMake(20, HEIGHT-75, WIDTH-40, 30), Font: 17, Text: footer)
        labelFooter.textAlignment = NSTextAlignment.Center
        labelFooter.textColor = UIColor.blackColor()
        self.view.addSubview(labelFooter)
        
        pageCtrl = UIPageControl(frame: CGRectMake(20, HEIGHT-40, WIDTH-40, 30))
        self.view.addSubview(pageCtrl)
        pageCtrl.backgroundColor = UIColor.clearColor()
        pageCtrl.numberOfPages = 3
        pageCtrl.currentPage = index
        pageCtrl.pageIndicatorTintColor = UIColor.grayColor()
        pageCtrl.currentPageIndicatorTintColor = UIColor.greenColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
