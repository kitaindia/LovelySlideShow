//
//  ViewController.swift
//  LovelySlideShow
//
//  Created by 竹原正起 on 2018/05/02.
//  Copyright © 2018年 竹原正起. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollViewWidth: NSLayoutConstraint!
    @IBOutlet weak var lovelyView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var imageViewList = [UIImageView]()
        
        for num in 1...11 {
            let fileName = String(format: "%04d", num) + ".jpg"
            imageViewList.append(UIImageView.init(image: UIImage(named: fileName)))
        }
        
        scrollViewWidth.constant = UIScreen.main.bounds.width * CGFloat(imageViewList.count)
        
        var index: CGFloat = 0
        for imageView in imageViewList {
            let frame = CGRect(x: UIScreen.main.bounds.width * index,
                               y: 0,
                               width: UIScreen.main.bounds.width,
                               height: UIScreen.main.bounds.height)
            imageView.frame = frame
            lovelyView.addSubview(imageView)
            index += 1  
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }


}

