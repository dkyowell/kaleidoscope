//
//  ViewController.swift
//  Kaleidoscope
//
//  Created by David Yowell on 6/28/17.
//  Copyright © 2017 David Yowell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pointsSlider: UISlider!
    @IBOutlet weak var circle: CircleView!
    @IBOutlet weak var multiplierSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pointsChanged(_ sender: Any) {
        circle.numberOfPoints = Int(pointsSlider.value)
        circle.setNeedsDisplay()
        print(circle.numberOfPoints)
    }
    
    @IBAction func multiplierChanged(_ sender: Any) {
        circle.multiplier = Int(multiplierSlider.value)
        circle.setNeedsDisplay()
    }
}

