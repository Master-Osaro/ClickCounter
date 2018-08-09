//
//  ViewController.swift
//  Click Counter
//
//  Created by Osaro Iyoha on 03/08/2018.
//  Copyright © 2018 Osaro Iyoha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("in Memory")
        // Do any additional setup after loading the view, typically from a nib.
        
        //programmatically creating a label and setting it as a subview of the rootview
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        //button
        let button = UIButton()
        button.frame = CGRect(x: 150, y:250, width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
    }
    
    @objc func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("about to appear")
    }



}

 
