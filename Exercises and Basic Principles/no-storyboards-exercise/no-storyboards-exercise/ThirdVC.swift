//
//  ThirdVC.swift
//  no-storyboards-exercise
//
//  Created by Mark Hamilton on 2/20/16.
//  Copyright © 2016 dryverless. All rights reserved.
//

import UIKit

class ThirdVC: UIViewController {
    
    convenience init() {
        self.init(nibName: "ThirdVC", bundle: nil)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goBackOneView(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
//    @IBAction func loadFirstView(sender: AnyObject) {
//    }
}
