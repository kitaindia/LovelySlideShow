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
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var imageViewList = [UIImageView]()
        
        for fileName in assetsFileNames() {
            let imageView = UIImageView.init(image: UIImage(named: fileName))
            imageView.contentMode = .scaleAspectFit
            
            imageViewList.append(imageView)
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
    
    func assetsFileNames() -> [String] {
        var fileNames = [String]()
        
        for num in 1...11 {
            let fileName = String(format: "%04d", num) + ".jpg"
            fileNames.append(fileName)
        }
        return fileNames
    }
}

