//
//  CollectionImageCell.swift
//  MastShare
//
//  Created by Shihab Mehboob on 18/11/2019.
//  Copyright © 2019 Shihab Mehboob. All rights reserved.
//

import Foundation
import UIKit

class CollectionImageCell: UICollectionViewCell {
    
    var bgImage = UIImageView()
    var image = UIImageView()
    var videoOverlay = UIImageView()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    public func configure() {
        self.bgImage.backgroundColor = .clear
        self.bgImage.frame = CGRect(x: 0, y: 0, width: 144, height: 120)
        self.bgImage.layer.cornerRadius = 5
        contentView.addSubview(bgImage)
        
        self.image.layer.borderWidth = 0.4
        self.layer.borderColor = UIColor.black.cgColor
        
        self.image.frame.origin.x = 0
        self.image.frame.origin.y = 0
        self.image.frame.size.width = 160
        self.image.frame.size.height = 120
        self.image.backgroundColor = UIColor.clear
        self.image.layer.cornerRadius = 5
        contentView.addSubview(image)
        
        self.videoOverlay.alpha = 0

        self.videoOverlay.layer.shadowColor = UIColor(named: "alwaysBlack")!.cgColor
        self.videoOverlay.layer.shadowOffset = CGSize(width: 0, height: 8)
        self.videoOverlay.layer.shadowRadius = 14
        self.videoOverlay.layer.shadowOpacity = 0.18
        
        contentView.addSubview(videoOverlay)
    }
}
