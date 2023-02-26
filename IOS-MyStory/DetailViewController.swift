//
//  DetailViewController.swift
//  IOS-MyStory
//
//  Created by Khiem Tran Le on 2/26/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    var khiem: Ironman?
    
    @IBOutlet weak var titleFact: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelFact: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let khiempro = khiem {
            imageView.image = khiempro.image
            labelFact.text = khiempro.fact
            titleFact.text = khiempro.title
        }
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    
}
