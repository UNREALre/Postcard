//
//  ViewController.swift
//  Postcards
//
//  Created by Александр Подрабинович on 20/12/14.
//  Copyright (c) 2014 Alex Podrabinovich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var textMessageInput: UITextField!
    @IBOutlet weak var labelHidden: UILabel!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var labelNameHidden: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickSendButton(sender: AnyObject) {
        labelHidden.hidden = false
        labelNameHidden.hidden = false
        labelHidden.text = textMessageInput.text
        labelHidden.textColor = UIColor.greenColor()
        labelNameHidden.text = nameInput.text
        labelNameHidden.textColor = UIColor.redColor()
        
        textMessageInput.text = ""
        textMessageInput.resignFirstResponder()
        
        mailButton.setTitle("Отправлено!", forState: UIControlState.Normal)
        mailButton.backgroundColor = UIColor.blueColor()
    }

}

