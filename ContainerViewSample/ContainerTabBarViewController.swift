//
//  ContainerTabBarViewController.swift
//  ContainerViewSample
//
//  Created by arbenjusufhayati on 3/5/18.
//  Copyright © 2018 HASELT. All rights reserved.
//

import UIKit

class ContainerTabBarViewController: UITabBarController {

    var currentTab: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.isHidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func selectItem(_ index:Int) {
        self.selectedIndex = index
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
