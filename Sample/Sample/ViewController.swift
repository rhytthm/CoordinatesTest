//
//  ViewController.swift
//  Sample
//
//  Created by Rhytthm on 05/09/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var constraintView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Ghost.text = "👻"
        Police.text = "👮"
        
        var randomIntXGhost = Int.random(in: 0..<200)
        var randomIntYGost = Int.random(in: 0..<200)
        var randomIntXPolice = Int.random(in: 0..<200)
        var randomIntYPolice = Int.random(in: 0..<200)
        while(randomIntXGhost != randomIntXPolice){
            randomIntXPolice = Int.random(in: 0..<200)
        }
        while(randomIntYGost != randomIntYPolice){
            randomIntYPolice = Int.random(in: 0..<200)
        }
        
        let Ghost = UILabel(frame: CGRect(x: randomIntXGhost, y: randomIntYGost, width: 15, height: 15))
        let Police = UILabel(frame: CGRect(x: randomIntXPolice, y: randomIntYPolice, width: 15, height: 15))
        


        
    }

    @IBOutlet weak var Ghost: UILabel!
    @IBOutlet weak var Police: UILabel!
    
   
        
  
    
    @IBAction func button(_ sender: Any) {
        performSegue(withIdentifier: "SegueButton", sender: nil)
        
    }
}

