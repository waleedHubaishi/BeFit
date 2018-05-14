//
//  SportLevelViewController.swift
//  BeFit
//
//  Created by Waleed al-Hubaishi on 07.05.18.
//  Copyright © 2018 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class SportLevelViewController: UIViewController {
    @IBOutlet weak var sportLevelLabel: UILabel!
    @IBOutlet weak var progrssPhoto: UIImageView!
    @IBOutlet weak var choosingLabel: UILabel!
    
    @IBOutlet weak var bgPicture: UIImageView!

    @IBOutlet weak var beginnerButton: UIButton!
    
    @IBOutlet weak var topClassButton: UIButton!
    @IBOutlet weak var professionalButton: UIButton!
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
