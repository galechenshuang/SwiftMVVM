//
//  SCDOilDeportCardCollectionView.swift
//  SwiftMVVMDemo
//
//  Created by gt001 on 2018/8/6.
//  Copyright © 2018年 Simpletour. All rights reserved.
//

import UIKit

class SCDOilDeportCardCollectionView: SCDBaseView {
    
    
    
    var collectionview : UICollectionView?
        //.init(frame:CGRect.zero , collectionViewLayout: layo)
    
//    let layout = UICollectionViewFlowLayout()
//    fileprivate lazy var collectionViewLayout:UICollectionViewFlowLayout = {
//        let layout = UICollectionViewFlowLayout.init()
//        return layout
//    }()
//    //MARK:实例化网格视图
//    fileprivate lazy var collectionview:UICollectionView = {
//
//        let view = UICollectionView.init(frame: self.bounds, collectionViewLayout: collectionViewLayout)
//        return view
//    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        
        let layout = UICollectionViewFlowLayout()
        collectionview = UICollectionView.init(frame: self.bounds, collectionViewLayout: layout)
        collectionview!.backgroundColor = UIColor.orange;
        
        collectionview!.delegate = self
        collectionview!.dataSource = self
        
        
        
        collectionview!.register(SCDOilDeportCardCollectionCell.self, forCellWithReuseIdentifier: "SCDOilDeportCardCollectionCell");
        collectionview?.register(<#T##viewClass: AnyClass?##AnyClass?#>, forSupplementaryViewOfKind: <#T##String#>, withReuseIdentifier: <#T##String#>)
        collectionview!.register(TSMHomeTopCollectionReusable.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: HEAD_ID);
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

extension SCDOilDeportCardCollectionView:UICollectionViewDelegate,UICollectionViewDataSource {
    
}
