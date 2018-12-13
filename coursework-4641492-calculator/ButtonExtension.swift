//
//  ButtonExtension.swift
//  coursework-4641492-calculator
//
//  Created by Sanood Welagedara on 13/12/2018.
//  Copyright © 2018 Sanood Welagedara. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    
    func animate(){
        let animation = CASpringAnimation(keyPath: "transform.scale");
        animation.duration = 0.2;
        animation.fromValue = 1.0;
        animation.toValue = 0.9;
        animation.autoreverses = true;
        animation.repeatCount = 1;
        animation.initialVelocity = 0.6;
        animation.damping = 0.1;
        layer.add(animation, forKey: nil);
    }
}
