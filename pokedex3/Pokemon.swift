//
//  Pokemon.swift
//  pokedex3
//
//  Created by Ricardo Herrera Petit on 6/16/17.
//  Copyright © 2017 Ricardo Herrera Petit. All rights reserved.
//

import Foundation
import Alamofire

class Pokemon {
    
    private var _name : String!
    private var _pokedexId: Int!
    private var _description: String!
    private var _type:String!
    private var _defense:String!
    private var _height:String!
    private var _weight:String!
    private var _attack:String!
    private var _nextEvolutionTxt: String!
    private var _pokemonURL:String!
    
    
    
    
    
    var name: String {
        return _name
    }
    
    var pokedexId:Int {
        return _pokedexId
    }
    
    init(name:String, pokedexId:Int) {
        
        self._name = name
        self._pokedexId = pokedexId
        
        self._pokemonURL = "\(URL_BASE)\(URL_POKEMON)\(self.pokedexId)/"
        
        
    }
    
    func downloadPokemonDetail(completed: DownloadComplete) {
        
        Alamofire.request(_pokemonURL).responseJSON { (response) in
            
            print(response.result.value!)
        }
        
    }
    
}
