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
    
    var sportPrefrences = SportSelections()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        beginnerButton.layer.cornerRadius = 10
        professionalButton.layer.cornerRadius = 10
        topClassButton.layer.cornerRadius = 10
        
        let logo = UIImage(named: "beFit.png")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView
        
        beginnerButton.clipsToBounds = true
        professionalButton.clipsToBounds = true
        topClassButton.clipsToBounds = true
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Sport Level", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
       
        
        bgPicture.layer.cornerRadius = 10
        bgPicture.clipsToBounds = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func threeButtonsAction(_ sender: UIButton) {
        
        let sportLevelName =  sender.accessibilityIdentifier
        sportPrefrences.sportlevel = sportLevelName
        
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "expectedStats") as! ExpetedStatsViewController
        secondViewController.sportPrefrences = sportPrefrences
        self.navigationController?.pushViewController(secondViewController, animated: true)
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
