//
//  SportTypeViewController.swift
//  BeFit
//
//  Created by Waleed al-Hubaishi on 07.05.18.
//  Copyright © 2018 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class SportTypeViewController: UIViewController {

    @IBOutlet weak var sportTypeLabel: UILabel!
    @IBOutlet weak var bgPicture: UIImageView!
    @IBOutlet weak var walkButton: UIButton!
    @IBOutlet weak var jogButton: UIButton!
    @IBOutlet weak var runButton: UIButton!
    @IBOutlet weak var choosingLabel: UILabel!
    @IBOutlet weak var progressPhoto: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
