//
//  UILabelX.swift
//  Pods-ViewDesignableHelpers_Tests
//
//  Created by Sami Ali on 11/19/18.
//

import Foundation

import UIKit

@IBDesignable
public class UILabelX: UILabel {
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        dynamicFontSize()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        dynamicFontSize()
    }
    
    func dynamicFontSize() {
        let font = self.font
        self.font = getScaledFont(for: font)
        self.adjustsFontForContentSizeCategory = true
    }
    
    func getScaledFont(for font: UIFont?) -> UIFont {
        
        guard let customFont = font else {
            return UIFont.systemFont(ofSize: 17)
        }
        if #available(iOS 11.0, *) {
            return UIFontMetrics.default.scaledFont(for: customFont)
        } else {
            return customFont.withSize(customFont.pointSize)
        }
    }
    
    @IBInspectable public var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable public var borderWidth: CGFloat = 0.0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable public var borderColor: UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable public var rotationAngle: CGFloat = 0 {
        didSet {
            self.transform = CGAffineTransform(rotationAngle: rotationAngle * .pi / 180)
        }
    }
    
    // MARK: - Shadow Text Properties
    
    @IBInspectable public var shadowOpacity: CGFloat = 0 {
        didSet {
            layer.shadowOpacity = Float(shadowOpacity)
        }
    }
    
    @IBInspectable public var shadowColorLayer: UIColor = UIColor.clear {
        didSet {
            layer.shadowColor = shadowColorLayer.cgColor
        }
    }
    
    @IBInspectable public var shadowRadius: CGFloat = 0 {
        didSet {
            layer.shadowRadius = shadowRadius
        }
    }
    
    @IBInspectable public var shadowOffsetLayer: CGSize = CGSize(width: 0, height: 0) {
        didSet {
            layer.shadowOffset = shadowOffsetLayer
        }
    }
}
