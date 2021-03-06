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
        
        

        
        let logo = UIImage(named: "beFit.png")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Sport Type", style: UIBarButtonItemStyle.plain, target: nil, action: nil)

        
        bgPicture.layer.cornerRadius = 10
        bgPicture.clipsToBounds = true
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.3882352941, green: 0.3882352941, blue: 0.3882352941, alpha: 1)
        self.navigationController?.navigationBar.tintColor = #colorLiteral(red: 0.3137254902, green: 0.8901960784, blue: 0.7607843137, alpha: 1)
        self.navigationController!.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func threeButtonsAction(_ sender: UIButton) {
        
        //get the button clicked by its identifier
        let sportTypeName =  sender.accessibilityIdentifier
        
        //assign the string identifier in the Sport Selections instance as the sport type
        sportPrefrences.sportType = sportTypeName
        
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "sportLevel") as! SportLevelViewController
        
        //assign the instance values to the next screen
        secondViewController.sportPrefrences = sportPrefrences
        self.navigationController?.pushViewController(secondViewController, animated: true)
 }
    
    //this empty function si just to recieve the segue coming from the last screen attached to the function of button "Back to start"
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
        
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
