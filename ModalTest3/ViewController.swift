//
//  ViewController.swift
//  ModalTest
//
//  Created by AV-ZhangJ on 5/10/16.
//  Copyright © 2016 AV-ZhangJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func pushViewController(sender: AnyObject) {
        
        
        
    }
    
    @IBAction func presentViewController(sender: AnyObject) {
        self.performSegueWithIdentifier("popoverView", sender: self)
        
    }
    
    @IBAction func popoverViewController(sender: AnyObject) {
        
        self.performSegueWithIdentifier("showView", sender: self)
    }
    
    
    //Override the method in performSegueWithIdentifier
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        //Because it overrides it, we want this action performed only if the segue identifier is "showView"
        if segue.identifier == "showView"{
            
            let alertController = UIAlertController(title: "This is an example of an Alert Controller", message: "Alert Controller", preferredStyle: .Alert)
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action:UIAlertAction!) in
                print("you have pressed the Cancel button");
            }
            alertController.addAction(cancelAction)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction!) in
                print("you have pressed OK button");
            }
            alertController.addAction(OKAction)
            
            self.presentViewController(alertController, animated: true, completion:nil)
        }
        if segue.identifier=="popView"{
            
            /*
             let ac = UIAlertController(title: "Hello!", message: "This is a Popover test.", preferredStyle: .ActionSheet)
             
             let popover = ac.popoverPresentationController
             popover?.sourceView = view
             popover?.sourceRect = CGRect(x: 50, y: 50, width: 164, height: 164)
             
             presentViewController(ac, animated: true, completion: nil)
             */
            
            
            var vc = segue.destinationViewController as UIViewController
            
            var controller = vc.popoverPresentationController
            controller?.sourceRect = CGRectMake(CGRectGetMidX(self.view.bounds), CGRectGetMidY(self.view.bounds),0,0)
            vc.preferredContentSize=CGSize(width: 400, height: 200)
            // vc.view.bounds = CGRect(x: 10, y: 100, width: 10, height: 10)
            
            
            
            if controller != nil{
                controller?.delegate = self
            }
            
            
            
            
            
            
        }
    }
    
    //Makes it always present as a Popover
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return .None
    }
    
}

