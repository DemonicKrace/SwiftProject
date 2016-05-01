//
//  ViewController.swift
//  MultiButton
//
//  Created by DemonicKrace on 2015/10/6.
//  Copyright © 2015年 DemonicKrace. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var number: UILabel!
    @IBOutlet var status: UILabel!
    @IBAction func numberClick(sender: UIButton) {
        number.text = number.text! + sender.currentTitle!
    }
    @IBAction func call(sender: UIButton) {
        if number.text?.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) == 10{
            status.text = "status: calling... " + number.text!
        }else{
            status.text = "status: please type correct phone number!";
        }
    }
    @IBAction func clear(sender: UIButton) {
        status.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

