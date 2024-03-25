//
//  ViewController.swift
//  collion _practice
//
//  Created by Karthiga on 9/11/23.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    
    let A = ["app","or","man","pap"]
    let B = ["img1","img1","img1","img1"]
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return A.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "one", for: indexPath) as! firstCollectionViewCell
        
        cell.label1.text = A[indexPath.row]
        cell.image1.image = UIImage(named: B[indexPath.row])
        return cell
        }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
    return CGSize(width: 450, height: 300)
    }
     
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

