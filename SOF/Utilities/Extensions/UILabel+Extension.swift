//
//  UILabel+Extension.swift
//  SOF
//
//  Created by Matthew Elmore on 7/5/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    
    /**
     This adds a blur effect and border to a UILabel. height and width ratio are for if the UIView has been reduced relative to its superView. No math needed, just put the number that you put in the constraint for each.
     **/
    func addBlurEffectToLabel(style: UIBlurEffect.Style) {
        self.clipsToBounds = true
        let cornerRadius: CGFloat = 5
        let blur = UIVisualEffectView(effect: UIBlurEffect(style: style))
        blur.frame = self.bounds
        blur.isUserInteractionEnabled = false
        self.insertSubview(blur, at: -1)
        if let imageView = self.mask{
            self.bringSubviewToFront(imageView)
        }
        blur.layer.cornerRadius = cornerRadius
        blur.clipsToBounds = true
        blur.layer.masksToBounds = true
        self.backgroundColor = .clear
        self.layer.cornerRadius = cornerRadius
        self.layer.borderWidth = 0.5
        switch style {
        case .dark:
            self.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            self.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        case .light:
            self.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            self.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        case .extraLight:
            self.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            self.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        case .prominent:
            print("Not supported yet")
        case .regular:
            print("Not supported yet")
        default:
            print("Not supported yet")
        }
    }
}
