//
//  UISliderX.swift
//  Pods-ViewDesignableHelpers_Tests
//
//  Created by Sami Ali on 11/19/18.
//

import Foundation

import UIKit

@IBDesignable
class UISliderX: UISlider {
    
    @IBInspectable var thumbImage: UIImage? {
        didSet {
            setupView()
        }
    }
    
    @IBInspectable var thumbHighlightedImage: UIImage? {
        didSet {
            setupView()
        }
    }
    
    func setupView() {
        setThumbImage(thumbImage, for: .normal)
        
        if let highlighted = thumbHighlightedImage {
            setThumbImage(highlighted, for: .highlighted)
        } else {
            setThumbImage(thumbImage, for: .highlighted)
        }
    }
}
