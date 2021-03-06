//
//  UISliderX.swift
//  Pods-ViewDesignableHelpers_Tests
//
//  Created by Sami Ali on 11/19/18.
//

import Foundation

import UIKit

@IBDesignable
public class UISliderX: UISlider {
    
    @IBInspectable public var thumbImage: UIImage? {
        didSet {
            setupView()
        }
    }
    
    @IBInspectable public var thumbHighlightedImage: UIImage? {
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
