//
//  DetailsViewController.swift
//  Assignment4
//
//  Created by Fhict on 30/09/15.
//  Copyright (c) 2015 Fhict. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var selectedPirate: Pirate?

    @IBOutlet weak var OutletName: UILabel!
    @IBOutlet weak var OutletLife: UILabel!
    @IBOutlet weak var OutletActiveYears: UILabel!
    @IBOutlet weak var OutletCountryOfBirth: UILabel!
    @IBOutlet weak var OutletComments: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.OutletName.text = self.selectedPirate?.Name
        self.OutletLife.text = self.selectedPirate?.Life
        self.OutletActiveYears.text = self.selectedPirate?.YearsActive
        self.OutletCountryOfBirth.text = self.selectedPirate?.CountryOfOrigin
        self.OutletComments.text = self.selectedPirate?.Comments
    }
}
