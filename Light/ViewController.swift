//
//  ViewController.swift
//  Light
//
//  Created by James Chun on 11/26/18.
//  Copyright © 2018 James Chun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    var brightness: CGFloat = 1.0;   //1.0 is maximum, 0.0 is minimum
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateUI()
    }
    
    @IBAction func swipeDown(_ sender: Any) {
        print("swipeDown");
        brightness -= 0.1;
        updateUI();
    }
    
    @IBAction func swipeUp(_ sender: Any) {
        print("swipeUp");
        brightness += 0.1;
        updateUI();
    }
    
    @IBAction func touchOnOff(_ sender: Any) {
        brightness = brightness != 1 ? 1 : 0
        updateUI()
    }
    
    func updateUI() {
        //Three copies of the same number make a shade of gray.
        view.backgroundColor = UIColor(red: brightness, green: brightness, blue: brightness, alpha: 1.0);
    }
    
}

