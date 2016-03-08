//
//  ViewController.swift
//  MalaNasobilka
//
//  Created by Michal Dzacovsky on 08/03/16.
//  Copyright © 2016 Michal Dzacovsky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Prva obrazovka
    
    @IBOutlet weak var BG1: UIImageView!
    @IBOutlet weak var NasobilkaBnr: UIImageView!
    @IBOutlet weak var ZadajCisloTxt: UITextField!
    @IBOutlet weak var HrajBtn: UIButton!
    
    
    // Druha Obrazovka
    
    @IBOutlet weak var BG2: UIImageView!
    @IBOutlet weak var PocitanieTxt: UILabel!
    @IBOutlet weak var SipkaDalej: UIButton!
    
    
    // Samotny program
    @IBAction func HrajProgram(sender: AnyObject) {
    
        NasobilkaBnr.hidden = true
        ZadajCisloTxt.hidden = true
        BG1.hidden = true
        HrajBtn.hidden = true
    
        BG2.hidden = false
        PocitanieTxt.hidden = false
        SipkaDalej.hidden = false
        
        
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

