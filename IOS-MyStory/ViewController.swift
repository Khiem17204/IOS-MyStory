//
//  ViewController.swift
//  IOS-MyStory
//
//  Created by Khiem Tran Le on 2/26/23.
//

import UIKit

class ViewController: UIViewController {
    
    let khiem1 = Ironman(image: UIImage(named: "background")!, fact: "Tony Stark is the wealthy son of industrialist and weapons manufacturer Howard Stark and his wife, Maria. Tony grew up a genius with a brilliant mind for technology and inventions and, naturally, followed in his father’s footsteps, inheriting Stark Industries upon his parents’ untimely death. Tony designed many weapons of war for Stark Industries, far beyond what any other company was creating, while living the lifestyle of a bon vivant.",title: "My Background")
    let khiem2 = Ironman(image: UIImage(named: "favouriteamour")!, fact: "Stark's final Iron Man suit is the Mark LXXXV or the 85th Iron Man suit featured in Avengers: Endgame. It appears to be a more metallic and bulkier version of the Mark L. What sets it apart from the Mark L (aside from appearance and upgrades) is the fact that it was also built to control and withstand the Infinity Stones. It's basically a portable Infinity Gauntlet-- the pinnacle of Stark's engineering.", title: "My Favourite Armour")
    let khiem3 = Ironman(image: UIImage(named: "mydeath")!, fact: "Thanos is able to overpower Stark before attempting another snap but discovers that Stark has transferred the Infinity Stones to his own armor. Stark activates the Gauntlet and uses it to disintegrate Thanos and all of his forces and save the universe, but fatally injures himself in the process. He dies surrounded by Rhodes, Parker, and Potts.", title: "My Victorious Death")
    
    @IBOutlet weak var mainImageView: UIImageView!
    
    var khiems: [Ironman] = []
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        khiems = [khiem1,khiem2,khiem3]
        for khiem in khiems {
            print(khiem)
        }
        mainImageView.layer.cornerRadius=mainImageView.frame.size.height/2
        
    }

    @IBAction func didTap(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

       if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.khiem = khiems[0]
            } else if tappedView.tag == 1 {
                detailViewController.khiem = khiems[1]
            } else if tappedView.tag == 2 {
                detailViewController.khiem = khiems[2]
            } else {
                print("nothing was tapped, please check your selection.")
            }
        }
    }

}

