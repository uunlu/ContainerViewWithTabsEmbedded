//
//  ViewController.swift
//  ContainerViewSample
//
//  Created by arbenjusufhayati on 3/5/18.
//  Copyright © 2018 HASELT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var selectedItem = 0
    var containerController : ContainerTabBarViewController!
    
    // replace the logic with the Question Model implementation
    // ask for next and previous questions.
    // think about how to add swipe gesture
    
    @IBAction func next(_ sender: Any) {
        selectedItem = (selectedItem + 1) % 2
      
        containerController.selectItem(selectedItem)
    }

    @IBAction func previous(_ sender: Any) {
        let index = (selectedItem - 1) % 2
        selectedItem = max(0, index)
        
        containerController.selectItem(selectedItem)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TabSegue" {
            print("tab ")
            self.containerController = segue.destination as! ContainerTabBarViewController
        }
    }
}

