//
//  PokemonDetailVC.swift
//  pokedex3
//
//  Created by Ricardo Herrera Petit on 6/19/17.
//  Copyright © 2017 Ricardo Herrera Petit. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    var pokemon:Pokemon!
    
    @IBOutlet weak var nameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLbl.text = pokemon.name
        
    }


}
