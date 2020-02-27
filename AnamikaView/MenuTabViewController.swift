//
//  MenuTabViewController.swift
//  
//
//  Created by Apple MacBook Pro  on 2/26/20.
//

import UIKit

class MenuTabViewController: UITabBarController {
    var fvc = UIViewController()
    
    
    @IBOutlet weak var Tabbar: UITabBar!
    let SlideInHandlr = SooninSlideInHandler()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      SlideInHandlr.selectionDelegate = self
    }
        
    @IBAction func MenuShowAction(_ sender: Any) {
        var myMenuSetting : [Setting] = []
           myMenuSetting.append(Setting(name: "Home", imageName: "Home"))
           myMenuSetting.append(Setting(name: "About", imageName: "about"))
           myMenuSetting.append(Setting(name: "setting",imageName: "setting"))
           myMenuSetting.append(Setting(name: "News",imageName: "News"))
           myMenuSetting.append(Setting(name: "photo",imageName: "photo"))
           myMenuSetting.append(Setting(name: "Video",imageName: "Video"))
           myMenuSetting.append(Setting(name: "Social", imageName: "social"))
        
           
           SlideInHandlr.settings = myMenuSetting
           SlideInHandlr.menuBackColor = UIColor.white

           SlideInHandlr.showSlideInMenu(menuSide: .Left)
        
    }
    
}
extension UIViewController {
        func add(_ child: UIViewController, frame: CGRect? = nil) {
            addChild(child)
            if let frame = frame {
                child.view.frame = frame
            }
            view.addSubview(child.view)
            child.didMove(toParent: self)
        }
        func remove() {
            willMove(toParent: nil)
            view.removeFromSuperview()
            removeFromParent()

       }

    }
    extension MenuTabViewController: SelectionDelegate{
        func didTapSelect(menuSelection: String, description: String) {
    //          print("select : \(ShowLabelBtn)")
    //              self.ShowLabelBtn.text = description
            if menuSelection == "Home"{
                //fvc.remove()
                let vc = storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
                //fvc = vc
                //self.add(vc, frame: self.containerView.frame)
                self.navigationController?.pushViewController(vc, animated: true)
                
                
            }
            if menuSelection == "About"{
                //fvc.remove()
                let vc = storyboard?.instantiateViewController(withIdentifier: "AboutViewController") as! AboutViewController
                //fvc = vc
                //self.add(vc, frame: self.containerView.frame)
                
               self.navigationController?.pushViewController(vc, animated: true)
                
                
            }
            
            if menuSelection == "setting"{
                //fvc.remove()
                let vc = storyboard?.instantiateViewController(withIdentifier: "SettingViewController") as! SettingViewController
               // fvc = vc
                //self.add(vc, frame: self.containerView.frame)
               
                 self.navigationController?.pushViewController(vc, animated: true)
                
            }
            if menuSelection == "News"{
                //fvc.remove()
                let vc = storyboard?.instantiateViewController(withIdentifier: "NewsViewController") as! NewsViewController
                //fvc = vc
                //self.add(vc, frame: self.containerView.frame)
                 self.navigationController?.pushViewController(vc, animated: true)
            }
            if menuSelection == "photo"{
                       //fvc.remove()
                       let vc = storyboard?.instantiateViewController(withIdentifier: "PhotoViewController") as! PhotoViewController
                      // fvc = vc
                       //self.add(vc, frame: self.containerView.frame)
                        self.navigationController?.pushViewController(vc, animated: true)
                   }
            if menuSelection == "Video"{
                      // fvc.remove()
                       let vc = storyboard?.instantiateViewController(withIdentifier: "VideoViewController") as! VideoViewController
                      // fvc = vc
                       //self.add(vc, frame: self.containerView.frame)
                        self.navigationController?.pushViewController(vc, animated: true)
                   }
            if menuSelection == "Social"{
                //fvc.remove()
                let vc = storyboard?.instantiateViewController(withIdentifier: "SocialViewController") as! SocialViewController
                //fvc = vc
                //self.add(vc, frame: self.containerView.frame)
                self.navigationController?.pushViewController(vc, animated: true)
                
            }
        }
        
        
    }





