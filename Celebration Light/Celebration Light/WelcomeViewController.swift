//
//  WelcomeViewController.swift
//  Celebration Light
//
//  Created by Rahul Bathija on 2022-01-17.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var holderView:UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

      
        
    }
    
    private func configure (){
        // set up scrollview
        
        scrollView.frame = holderView.bounds
        holderView.addSubview(scrollView)
        
        let titles = ["Welcome", "Location", "All Set"]
        for x in 0..<3 {
            let pageView = UiView(frame: CGRect(x: CGFloat(x) * holderView.frame.size.width, y:0, width: holderView.frame.size.width, height: holderView.frame.size.height))
            scrollView.addSubview(pageView)
            
        //Title, image, button
        
            let label = UILabel(frame: CGRect(x:10, y:10, width: pageView.frame.size.width-20, height: 120))
            let imageView = UiImageView(frame: CGRect(x:10, y: 10+120+10, width: pageView.frame.size.width-20, height: pageView.frame.size.height - 60 - 130 - 15))
            let button = UIButton(frame: CGRect(x: 10, y: pageView.frame.size.height-60, width: pageView.frame.size.width-20, height: 50))
            
            label.textAlignment = .center
            label.font = UIFont(name: "Helvetica-Bold", size: 32)
        }
        
    }
    
    
    // WelcomeViewController linked to Storyboard

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
