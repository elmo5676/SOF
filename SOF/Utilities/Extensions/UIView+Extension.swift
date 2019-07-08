//
//  UIView+Extension.swift
//  SOF
//
//  Created by Matthew Elmore on 6/19/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation
import UIKit


extension UIView {
    
    // Example use: myView.addBorder(toSide: .Left, withColor: UIColor.redColor().CGColor, andThickness: 1.0)
    
    enum ViewSide {
        case Left, Right, Top, Bottom
    }
    
    func addBorder(toSide sides: [ViewSide], withColor color: CGColor, andThickness thickness: CGFloat) {
        
        let border = CALayer()
        border.backgroundColor = color
        
        for side in sides {
            switch side {
            case .Left: border.frame = CGRect(x: frame.minX, y: frame.minY, width: thickness, height: frame.height)//; break
            case .Right: border.frame = CGRect(x: frame.maxX, y: frame.minY, width: thickness, height: frame.height)//; break
            case .Top: border.frame = CGRect(x: frame.minX, y: frame.minY, width: frame.width, height: thickness)//; break
            case .Bottom: border.frame = CGRect(x: frame.minX, y: frame.maxY, width: frame.width, height: thickness)//; break
            }
            layer.addSublayer(border)
        }
        
        
    }
    
    /**
     This adds a blur effect and border to a UIView. height and width ratio are for if the UIView has been reduced relative to its superView. No math needed, just put the number that you put in the constraint for each.
    **/
    func addBlurEffecttoView(style: UIBlurEffect.Style, heightRatio: CGFloat, widthRatio: CGFloat) {
        let hRatio = 1/heightRatio
        let wRatio = 1/widthRatio
        let cornerRadius: CGFloat = 5
        let blur = UIVisualEffectView(effect: UIBlurEffect(style: style))
        let frame = self.frame
        blur.frame = CGRect(x: 0, y: 0, width: frame.width * wRatio, height: frame.height * hRatio)
        blur.isUserInteractionEnabled = false
        self.insertSubview(blur, at: 0)
        if let imageView = self.mask{
            self.bringSubviewToFront(imageView)
        }
        blur.layer.cornerRadius = cornerRadius
        blur.clipsToBounds = true
        blur.layer.masksToBounds = true
        self.backgroundColor = .clear
        self.layer.cornerRadius = cornerRadius
        blur.layer.borderWidth = 0.5
        switch style {
        case .dark:
            blur.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        case .light:
            blur.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        case .extraLight:
            blur.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        case .prominent:
            print("Not supported yet")
        case .regular:
            print("Not supported yet")
        default:
            print("Not supported yet")
        }
    }
    
}
