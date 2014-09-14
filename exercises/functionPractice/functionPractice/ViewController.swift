//
//  ViewController.swift
//  functionPractice
//
//  Created by jun.hashimoto on 2014/09/14.
//
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var button:UIButton?
    var _calcCircle:calcCircle?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        _calcCircle = calcCircle()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onClickButton() {
        let RADIUS: Int = 10
        var result = _calcCircle?.execute(RADIUS)
        println(result)
    }
}