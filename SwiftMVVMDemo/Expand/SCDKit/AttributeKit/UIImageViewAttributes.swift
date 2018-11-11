//
//  ImageViewAttributes.swift
//  SwiftMVVMDemo
//
//  Created by Simpletour on 2018/7/2.
//  Copyright © 2018年 Simpletour. All rights reserved.
//

import UIKit


extension SCDSwiftKit where T : UIImageView {
    
    @discardableResult
    public func image(_ image:UIImage?) -> SCDSwiftKit {
        self.view.image = image;
        return self;
    }
    
    @discardableResult
    public func highlightedImage(_ highlightedImage:UIImage?) -> SCDSwiftKit {
        self.view.highlightedImage = highlightedImage;
        return self;
    }
    
    @discardableResult
    public func imageNamed(_ imageNamed:String) -> SCDSwiftKit {
        self.view.image = UIImage.init(named: imageNamed);
        return self;
    }
    
    @discardableResult
    public func highlightedImageNamed(_ highlightedImageNamed:String) -> SCDSwiftKit {
        self.view.highlightedImage = UIImage.init(named: highlightedImageNamed);
        return self;
    }
    
    @discardableResult
    public func isHighlighted(_ isHighlighted:Bool) -> SCDSwiftKit {
        self.view.isHighlighted = isHighlighted;
        return self;
    }
}
