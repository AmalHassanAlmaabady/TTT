

import UIKit

class ViewController: UIViewController {
    
    //Fisrt row
    @IBOutlet weak var squar1Of1: UIButton!
    @IBOutlet weak var squar2Of1: UIButton!
    @IBOutlet weak var squar3Of1: UIButton!
    
    //Second row
    @IBOutlet weak var squar1Of2: UIButton!
    @IBOutlet weak var squar2Of2: UIButton!
    @IBOutlet weak var squar3Of2: UIButton!
    
    //Third row
    @IBOutlet weak var squar1Of3: UIButton!
    @IBOutlet weak var squar2Of3: UIButton!
    @IBOutlet weak var squar3Of3: UIButton!
    
    //Winner
    @IBOutlet weak var winnerLabel: UILabel!
    
    var player = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func squar1Of1Action(_ sender: Any) {
        colors(squar: squar1Of1)
        winner()
    }
    
    
    @IBAction func squar2Of1Action(_ sender: Any) {
        colors(squar: squar2Of1)
        winner()
    }
    
    
    @IBAction func squar3Of1Action(_ sender: Any) {
        colors(squar: squar3Of1)
        winner()
    }
    
    
    @IBAction func squar1Of2Action(_ sender: Any) {
        colors(squar: squar1Of2)
        winner()
    }
    
    @IBAction func squar2Of2Action(_ sender: Any) {
        colors(squar: squar2Of2)
        winner()
    }
    
    @IBAction func squar3Of2Action(_ sender: Any) {
        colors(squar: squar3Of2)
        winner()
    }
    
    
    @IBAction func squar1Of3Action(_ sender: Any) {
        colors(squar: squar1Of3)
        winner()
    }
    
    
    @IBAction func squar2Of3Action(_ sender: Any) {
        colors(squar: squar2Of3)
        winner()
    }
    
    @IBAction func squar3Of3Action(_ sender: Any) {
        colors(squar: squar3Of3)
        winner()
    }
    
    
    func colors (squar : UIButton ){
        if squar.backgroundColor == .red || squar.backgroundColor == .blue {
            return
        }else if player == 0 {
            squar.backgroundColor = .red
            player = 1
        }else{
            squar.backgroundColor = .blue
            player = 0
        }
    }
    
    func winner(){
        if squar1Of1.backgroundColor == .red &&
            squar1Of2.backgroundColor == .red  && squar1Of3.backgroundColor == .red {
                winnerLabel.text = "Congrats Red won"
                return
            }else if squar1Of1.backgroundColor == .blue &&
                        squar1Of2.backgroundColor == .blue  && squar1Of3.backgroundColor == .blue {
                winnerLabel.text = "Congrats Blue won"
                return
            }else if squar1Of1.backgroundColor == .red && squar2Of1.backgroundColor == .red && squar3Of1.backgroundColor == .red{
                winnerLabel.text = "Congrats Red won"
                return
            }else if squar1Of1.backgroundColor == .blue && squar2Of1.backgroundColor == .blue && squar3Of1.backgroundColor == .blue{
                winnerLabel.text = "Congrats Blue won"
                return
            }else if squar1Of1.backgroundColor == .red && squar2Of2.backgroundColor == .red && squar3Of3.backgroundColor == .red{
                winnerLabel.text = "Congrats Red won"
                return
            }else if squar1Of1.backgroundColor == .blue && squar2Of2.backgroundColor == .blue && squar3Of3.backgroundColor == .blue{
                winnerLabel.text = "Congrats Blue won"
                return
            }else if squar2Of1.backgroundColor == .red && squar2Of2.backgroundColor == .red && squar2Of3.backgroundColor == .red{
                winnerLabel.text = "Congrats Red won"
                return
            }else if squar2Of1.backgroundColor == .blue && squar2Of2.backgroundColor == .blue && squar2Of3.backgroundColor == .blue{
                winnerLabel.text = "Congrats Blue won"
                return
            }else if squar3Of1.backgroundColor == .red && squar3Of2.backgroundColor == .red && squar3Of3.backgroundColor == .red{
                winnerLabel.text = "Congrats Red won"
                return
            }else if squar3Of1.backgroundColor == .blue && squar3Of2.backgroundColor == .blue && squar3Of3.backgroundColor == .blue{
                winnerLabel.text = "Congrats Blue won"
                return
            }else if squar3Of1.backgroundColor == .red && squar2Of2.backgroundColor == .red && squar1Of3.backgroundColor == .red{
                winnerLabel.text = "Congrats Red won"
                return
            }else if squar3Of1.backgroundColor == .blue && squar2Of2.backgroundColor == .blue && squar1Of3.backgroundColor == .blue{
                winnerLabel.text = "Congrats Blue won"
                return
            }else if squar3Of3.backgroundColor == .red && squar2Of3.backgroundColor == .red && squar1Of3.backgroundColor == .red{
                winnerLabel.text = "Congrats Red won"
                return
            }else if squar3Of3.backgroundColor == .blue && squar2Of3.backgroundColor == .blue && squar1Of3.backgroundColor == .blue{
                winnerLabel.text = "Congrats Blue won"
                return
            }else if squar3Of2.backgroundColor == .red && squar2Of2.backgroundColor == .red && squar1Of2.backgroundColor == .red{
                winnerLabel.text = "Congrats Red won"
                return
            }else if squar3Of2.backgroundColor == .blue && squar2Of2.backgroundColor == .blue && squar1Of2.backgroundColor == .blue{
                winnerLabel.text = "Congrats Blue won"
                return
            }else{
            return
        }
    }
    
    
    @IBAction func resetAction(_ sender: Any) {
        squar1Of1.backgroundColor = .lightGray
        squar2Of1.backgroundColor = .lightGray
        squar3Of1.backgroundColor = .lightGray
        
        squar1Of2.backgroundColor = .lightGray
        squar2Of2.backgroundColor = .lightGray
        squar3Of2.backgroundColor = .lightGray
        
        squar1Of3.backgroundColor = .lightGray
        squar2Of3.backgroundColor = .lightGray
        squar3Of3.backgroundColor = .lightGray
        
        player = 0
        winnerLabel.text = ""
    }
}
