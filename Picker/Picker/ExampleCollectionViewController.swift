//
//  ExampleCollectionViewController.swift
//  Picker
//
//  Created by curs on 31/1/19.
//  Copyright © 2019 curs. All rights reserved.
//

import UIKit

class ExampleCollectionViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let cursos = ["iOS", "Android", "Machine Learning", "Deep Learning", "Security", "Hola"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension ExampleCollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ExampleCellCollectionViewCell
        
        cell.label.text = "\(cursos[indexPath.row])"
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cursos.count
    }
}

extension ExampleCollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let orientation = UIApplication.shared.statusBarOrientation
        let flowLayout = collectionViewLayout as! UICollectionViewFlowLayout
        var elementsPerRow: Int!
        
        if orientation.isLandscape {
            elementsPerRow = 6
        } else {
            elementsPerRow = 3
        }
        
        let totalSpace = flowLayout.sectionInset.left + flowLayout.sectionInset.right + (flowLayout.minimumInteritemSpacing * CGFloat(elementsPerRow - 1))
        let size = Int((collectionView.bounds.width - totalSpace) / CGFloat(elementsPerRow))
        return CGSize(width: size, height: size)
    }
}
