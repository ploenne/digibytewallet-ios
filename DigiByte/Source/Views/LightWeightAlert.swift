//
//  LightWeightAlert.swift
//  breadwallet
//
//  Created by Adrian Corscadden on 2017-06-20.
//  Copyright © 2017 breadwallet LLC. All rights reserved.
//

import UIKit

class LightWeightAlert : UIView {

    init(message: String) {
        super.init(frame: .zero)
        self.label.text = message
        setup()
    }

    let effect = UIBlurEffect(style: .dark)
    let background = UIVisualEffectView()
    let container = UIView()
    private let label = UILabel(font: .customMedium(size: 16.0))

    private func setup() {
        addSubview(background)
        background.constrain(toSuperviewEdges: nil)
        background.contentView.addSubview(container)
        container.addSubview(label)
        container.constrain(toSuperviewEdges: nil)
        label.constrain(toSuperviewEdges: UIEdgeInsets(top: C.padding[2], left: C.padding[2], bottom: -C.padding[2], right: -C.padding[2]))
        
        container.widthAnchor.constraint(lessThanOrEqualTo: widthAnchor, multiplier: 1.0).isActive = true
        label.widthAnchor.constraint(equalTo: container.widthAnchor, multiplier: 0.8).isActive = true
        label.textAlignment = .center
        label.numberOfLines = 0
        
        layer.cornerRadius = 4.0
        layer.masksToBounds = true
        label.textColor = C.Colors.text
        backgroundColor = C.Colors.blue
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
