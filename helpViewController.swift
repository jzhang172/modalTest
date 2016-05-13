//
//  helpViewController.swift
//  ModalTest3
//
//  Created by AV-ZhangJ on 5/13/16.
//  Copyright © 2016 AV-ZhangJ. All rights reserved.
//  Controller for Popover


import UIKit

class helpViewController: UIViewController{
    
    //Outlets
    @IBOutlet weak var closePop: UIButton!
    @IBOutlet weak var helpLabel: UILabel!
    @IBAction func closePop(sender: AnyObject) {
        self.dismissViewControllerAnimated(false, completion: nil)
        
        print("Closed Popover")
    }
    @IBAction func like(sender: AnyObject) {
        (closePop as UIButton).backgroundColor = UIColor.greenColor()
        print("Are you even working?")
    }

    var myString = "Help"
    var myMutableString = NSMutableAttributedString()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        func newstring(){
        myMutableString = NSMutableAttributedString(
            string: myString,
            attributes: [NSFontAttributeName:UIFont(
                name: "AlNile-bold",
                size: 15.0)!])
        //Add more attribuees here
        
        //Apply to the label
        helpLabel.attributedText = myMutableString
 
        }
        
        
        
        
        let borderAlpha : CGFloat = 0.7
        let cornerRadius : CGFloat = 5.0
        closePop.titleLabel?.font = UIFont.boldSystemFontOfSize(15)
        closePop.titleLabel?.font = UIFont(name:"AlNile",size:15)
        closePop.layer.borderWidth = 1.0
        closePop.layer.borderColor = UIColor.blackColor().CGColor
        closePop.layer.cornerRadius = cornerRadius
        
        //Help Styles
        helpLabel.layer.borderWidth = 1.0
        helpLabel.layer.borderColor = UIColor.blackColor().CGColor

    
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}

}