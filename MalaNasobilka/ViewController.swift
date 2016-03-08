//
//  ViewController.swift
//  MalaNasobilka
//
//  Created by Michal Dzacovsky on 08/03/16.
//  Copyright © 2016 Michal Dzacovsky. All rights reserved.
//

import UIKit





    var nasobitel:Int = 0
    var maximum:Int = 0
    var aktualnySucet:Int = 0
    var maxi1:Int = 0



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
    

    
    func restart() {
        NasobilkaBnr.hidden = false
        ZadajCisloTxt.hidden = false
        BG1.hidden = false
        HrajBtn.hidden = false
        
        BG2.hidden = true
        PocitanieTxt.hidden = true
        SipkaDalej.hidden = true
        
        maximum = 0
        aktualnySucet = 0

    }
    
    
    
    // Samotny program
    @IBAction func HrajProgram(sender: AnyObject) {
    
        NasobilkaBnr.hidden = true
        ZadajCisloTxt.hidden = true
        BG1.hidden = true
        HrajBtn.hidden = true
    
        BG2.hidden = false
        PocitanieTxt.hidden = false
        SipkaDalej.hidden = false
        nasobitel = Int(ZadajCisloTxt.text!)!
        maxi1 = nasobitel * 10
        PocitanieTxt.text = "0 + \(nasobitel) = \(nasobitel)"
        
    }
    
    
    @IBAction func Dalej(sender: AnyObject) {
        
        if maxi1 > (aktualnySucet + nasobitel) {
            aktualnySucet = aktualnySucet + nasobitel
            PocitanieTxt.text = " \(aktualnySucet) + \(nasobitel) = \(aktualnySucet + nasobitel)"

        } else {
            restart()
        }
        
        
    }
    
    
    
    
 /*
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
*/

}

