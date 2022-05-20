//
//  ViewController.swift
//  MainProject
//
//  Created by Emir Hamidovic on 17. 5. 2022..
//

import UIKit
import TestFrameworkSubmodule

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(Feature().testFeature())
        
        Feature().testFeature(value: "Emir")
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func onPressed(_ sender: Any) {
        
        let bundle = Bundle(identifier: "com.test.TestFrameworkSubmodule")
        let storyboard = UIStoryboard(name: "TestStoryboard", bundle: bundle)
        
        let vc = storyboard.instantiateViewController(withIdentifier: "TestViewController") as! TestViewController
        
        print(vc.testingVar)
        self.navigationController!.pushViewController(vc, animated: true)
        
    }
    
}

