//
//  PhotoViewController.swift
//  AnamikaView
//
//  Created by Apple MacBook Pro  on 2/26/20.
//  Copyright © 2020 Apple MacBook Pro . All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {
    var imageName = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P"]
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
   override func viewDidLoad() {
              super.viewDidLoad()
     self.navigationItem.title = "PhotoViewController"
              // Do any additional setup after loading the view.
          }


      }
      extension PhotoViewController:UICollectionViewDelegate,UICollectionViewDataSource{
          func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
              return imageName.count
          }
          func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
              let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
              
              cell.Img.layer.borderWidth = 1
              cell.Img.layer.masksToBounds = false
              cell.Img.layer.backgroundColor = UIColor.black.cgColor
              cell.Img.layer.cornerRadius = cell.Img.frame.height/2
              cell.Img.clipsToBounds = true
              cell.Img.image = UIImage(named: imageName [indexPath.item])
              return cell
              
          }
        
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            let image = UIImage(named: imageName[indexPath.item])
            
            let imageInfo = GSImageInfo (image: image!, imageMode: .aspectFit)
            let transitionInfo = GSTransitionInfo(fromView: collectionView)
            let imageViewer = GSImageViewerController(imageInfo: imageInfo, transitionInfo: transitionInfo)
            imageViewer.dismissCompletion = {
                print("dismiss called")
            }
            
            present(imageViewer,animated: true)
        }
          
      }


      
    


