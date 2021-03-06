//
//  InstructionHeaderFooterView.swift
//  Spoon Master
//
//  Created by Nam Ngây on 6/26/20.
//  Copyright © 2020 Nam Ngây. All rights reserved.
//

import UIKit

final class InstructionHeaderFooterView: UITableViewHeaderFooterView {
    
    @IBOutlet private weak var sectionNameLabel: UILabel!
    
    func setupSectionName( _ data: String) {
        sectionNameLabel.do {
            $0.text = data
            $0.text?.capitalizingFirstLetter()
            $0.wrapContent()
        }
        if data.isEmpty {
            sectionNameLabel.text = "Prepare"
        }
    }
}
