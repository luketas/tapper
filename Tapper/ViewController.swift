//
//  ViewController.swift
//  Tapper
//
//  Created by Lucas Franco on 3/11/16.
//  Copyright © 2016 Lucas Franco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var maxtaps = 0
    var currenttaps = 0
    
    
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var txtfld: UITextField!
    @IBOutlet weak var playbtn: UIButton!
    @IBOutlet weak var coin: UIButton!
    @IBOutlet weak var taplabel: UILabel!
    
    @IBAction func playnow(sender: UIButton) {
        
        if txtfld.text != nil && txtfld.text != ""{
            logo.hidden = true
            playbtn.hidden = true
            txtfld.hidden = true
            
            coin.hidden = false
            taplabel.hidden = false
            
            maxtaps = Int(txtfld.text!)!
            currenttaps = 0
            
            updatetaplabel()
        
        }
    
    }
    @IBAction func tap(sender: UIButton) {
        currenttaps++
        
        updatetaplabel()
        if isgameover() {
            resetgame()
        }
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func updatetaplabel(){
       taplabel.text = "\(currenttaps) Taps"
    }
    func    isgameover()->Bool{
        if currenttaps >= maxtaps {
        return true
        }
        else{
        return false
        }
    }
    func resetgame() {
        maxtaps = 0
        taplabel.text=""
        logo.hidden = false
        playbtn.hidden = false
        txtfld.hidden = false
        
        coin.hidden = true
        taplabel.hidden = true
    }

}

