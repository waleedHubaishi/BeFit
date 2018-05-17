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
    
    @IBOutlet weak var marathonButton: UIButton!
    @IBOutlet weak var hikeButton: UIButton!
    @IBOutlet weak var jogButton: UIButton!
    @IBOutlet weak var choosingLabel: UILabel!
    @IBOutlet weak var progressPhoto: UIImageView!
    
    var sportPrefrences = SportSelections()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        walkButton.layer.cornerRadius = 10
        hikeButton.layer.cornerRadius = 10
        jogButton.layer.cornerRadius = 10
        marathonButton.layer.cornerRadius = 10
        
        walkButton.clipsToBounds = true
        hikeButton.clipsToBounds = true
        jogButton.clipsToBounds = true
        marathonButton.clipsToBounds = true
        
        bgPicture.layer.cornerRadius = 10
        bgPicture.clipsToBounds = true
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func threeButtonsAction(_ sender: UIButton) {
        
        let sportTypeName =  sender.accessibilityIdentifier
        sportPrefrences.sportType = sportTypeName
        
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "sportLevel") as! SportLevelViewController
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
