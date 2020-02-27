

import UIKit

class SocialViewController: UIViewController {
    
    
    @IBOutlet weak var Fb: UIButton!
    
    
    @IBOutlet weak var Ins: UIButton!
    
    
    @IBOutlet weak var Link: UIButton!
    
    
    @IBOutlet weak var Twi: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    self.navigationItem.title = "SocialViewController"
       Fb.layer.cornerRadius = 15
       Ins.layer.cornerRadius = 15
       Link.layer.cornerRadius = 15
       Twi.layer.cornerRadius = 15

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Fb(_ sender: UIButton) {guard let url = URL(string: "https://www.facebook.com/")else {
                return
            }
            UIApplication.shared.open(url)
        }
    
    
    
    @IBAction func Ins(_ sender: UIButton) { guard let url = URL(string: "https://www.instagram.com/") else {
                   return
               }
               UIApplication.shared.open(url)
           }
    
    
    @IBAction func Link(_ sender: UIButton) { guard let url = URL(string: "https://www.linkedin.com/login") else {
                   return
               }
               UIApplication.shared.open(url)
           }
    
    
    @IBAction func Twi(_ sender: UIButton) {guard let url = URL(string: "https://twitter.com/i/flow/signup") else {
                return
            }
            UIApplication.shared.open(url)
        }
    
    
    
}
