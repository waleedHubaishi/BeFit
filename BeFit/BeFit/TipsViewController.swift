//
//  TipsViewController.swift
//  BeFit
//
//  Created by Waleed al-Hubaishi on 07.05.18.
//  Copyright © 2018 Waleed al-Hubaishi. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class TipsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tipsLabel: UILabel!
    
    @IBOutlet weak var bgPhoto: UIImageView!
    @IBOutlet weak var tipsTable: UITableView!
    @IBOutlet weak var choosingLabel: UILabel!
    
    var data = DataClass()
    var sportPrefrences = SportSelections()
    
    var ref:FIRDatabaseReference!
    
    var handle:FIRDatabaseHandle!
    var snap:FIRDataSnapshot!
    
    func fetchData(){

       let hikeRef =  ref.child("Hike")
        let hikeRefSecMyRef =  hikeRef.child("Beginner")

        hikeRefSecMyRef.observeSingleEvent(of: .value, with: { snapshot in
    
            let a = (snapshot.value as! NSArray as Array).filter {$0 is String}
            for tip in a{
                self.data.tipsBegginerHike.append(tip as? String ?? "")
            }
        })
        

        let hikeThirdMyRef =  hikeRef.child("Professional")
        
        hikeThirdMyRef.observeSingleEvent(of: .value, with: { snapshot in
            
            let b = (snapshot.value as! NSArray as Array).filter {$0 is String}
            for tip in b{
                self.data.tipsProffesionalHike.append(tip as? String ?? "")
            }
        })
        
        let hikeFourthMyRef =  hikeRef.child("TopClass")
        
        hikeFourthMyRef.observeSingleEvent(of: .value, with: { snapshot in
            
            let c = (snapshot.value as! NSArray as Array).filter {$0 is String}
            for tip in c{
                self.data.tipsTopClassHike.append(tip as? String ?? "")
            }
        })
 
        
        /////// Jog
        let jogRef =  ref.child("Jog")
        let jogRefSecMyRef =  jogRef.child("Beginner")
        
        jogRefSecMyRef.observeSingleEvent(of: .value, with: { snapshot in
            
            let b = (snapshot.value as! NSArray as Array).filter {$0 is String}
            for tip in b{
                self.data.tipsBegginerJog.append(tip as? String ?? "")
            }
        })
        
        let jogThirdMyRef =  jogRef.child("Professional")
        
        jogThirdMyRef.observeSingleEvent(of: .value, with: { snapshot in
            
            let b = (snapshot.value as! NSArray as Array).filter {$0 is String}
            for tip in b{
                self.data.tipsProffesionalJog.append(tip as? String ?? "")
            }
        })
        
        let jogFourthMyRef =  jogRef.child("TopClass")
        
        jogFourthMyRef.observeSingleEvent(of: .value, with: { snapshot in
            
            let b = (snapshot.value as! NSArray as Array).filter {$0 is String}
            for tip in b{
                self.data.tipsTopClassJog.append(tip as? String ?? "")
            }
        })
        
        /////// Marathon
        let marathonRef =  ref.child("Marathon")
        let marathonRefSecMyRef =  marathonRef.child("Beginner")
        
        marathonRefSecMyRef.observeSingleEvent(of: .value, with: { snapshot in
            
            let b = (snapshot.value as! NSArray as Array).filter {$0 is String}
            for tip in b{
                self.data.tipsBegginerMarathon.append(tip as? String ?? "")
            }
        })
        
        let marathonThirdMyRef =  marathonRef.child("Professional")
        
        marathonThirdMyRef.observeSingleEvent(of: .value, with: { snapshot in
            
            let b = (snapshot.value as! NSArray as Array).filter {$0 is String}
            for tip in b{
                self.data.tipsProffesionalMarathon.append(tip as? String ?? "")
            }
        })
        
        let marathonFourthMyRef =  marathonRef.child("TopClass")
        
        marathonFourthMyRef.observeSingleEvent(of: .value, with: { snapshot in
            
            let b = (snapshot.value as! NSArray as Array).filter {$0 is String}
            for tip in b{
                self.data.tipsTopClassMarathon.append(tip as? String ?? "")
            }
        })

        /////// Walk
        let walkRef =  ref.child("Walk")
        let walkRefSecMyRef =  walkRef.child("Beginner")
        
        walkRefSecMyRef.observeSingleEvent(of: .value, with: { snapshot in
            
            let b = (snapshot.value as! NSArray as Array).filter {$0 is String}
            for tip in b{
                self.data.tipsBegginerWalk.append(tip as? String ?? "")
            }
        })
        
        let walkThirdMyRef =  walkRef.child("Professional")
        
        walkThirdMyRef.observeSingleEvent(of: .value, with: { snapshot in
            
            let c = (snapshot.value as! NSArray as Array).filter {$0 is String}
            for tip in c{
                self.data.tipsProffesionalWalk.append(tip as? String ?? "")
            }
        })
        
        let walkFourthMyRef =  walkRef.child("TopClass")
        
        walkFourthMyRef.observeSingleEvent(of: .value, with: { snapshot in
            
            let b = (snapshot.value as! NSArray as Array).filter {$0 is String}
            for tip in b{
                self.data.tipsTopClassWalk.append(tip as? String ?? "")
            }
        })
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        data.determineTheTips(sportPrefrences:sportPrefrences)
        tipsTable.reloadData()

    }
    
    override func viewWillAppear(_ animated: Bool) {

        fetchData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref = FIRDatabase.database().reference()
       


        // Do any additional setup after loading the view.
        self.tipsTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.tipsTable.backgroundColor = UIColor.white
        self.tipsTable.dataSource=self
        self.tipsTable.delegate=self
        
        tipsTable.backgroundView = nil
        tipsTable.backgroundColor = UIColor.clear
        
        bgPhoto.layer.cornerRadius = 10
        bgPhoto.clipsToBounds = true

        tipsTable.rowHeight = UITableViewAutomaticDimension
        tipsTable.estimatedRowHeight = 44
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(data.tips.count != 0){
            return data.tips.count
        }
        else{
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        //cell.backgroundColor = UIColor.clear
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tipCell", for: indexPath) as! TipsTableViewCell
        cell.backgroundColor = UIColor.clear
        
        /*let screenSize = UIScreen.main.bounds
        let separatorHeight = CGFloat(2.0)
        let additionalSeparator = UIView.init(frame: CGRect(x: 0, y: cell.frame.size.height-separatorHeight, width: screenSize.width, height: separatorHeight))
        additionalSeparator.backgroundColor = UIColor.gray
        cell.addSubview(additionalSeparator)*/
        cell.selectionStyle = .none
        cell.tipLabel.text = data.tips[indexPath.row]
        cell.tipLabel.sizeToFit()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
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
