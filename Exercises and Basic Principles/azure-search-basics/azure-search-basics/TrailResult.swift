//
//  TrailResult.swift
//  azure-search-basics
//
//  Created by Mark Hamilton on 3/10/16.
//  Copyright © 2016 dryverless. All rights reserved.
//

import Foundation

class TrailResult: AZSResult {
    
    // Structure ::
    // @search.score - superclass
    // id - superclass
    // name - superclass
    // county
    // elevation
    // location - superclass
    
    private var _name: String?
    private var _location: AZSLocation?
    private var _county: String!
    private var _elevation: Int!
    
    var name: String {
        
        get {
            
            if let resultName: String = _name ?? "" {
                
                return resultName
                
            }
            
        }
        
    }
    
    var location: AZSLocation {
        
        get {
            
            if let resultLocation: AZSLocation = _location ?? AZSLocation() {
                
                return resultLocation
                
            }
            
        }
        
    }
    
    var county: String {
        
        get {
            
            if let cty: String = _county ?? "N/A" {
                
                return cty
                
            }
            
        }
        
    }
    
    var elevation: Int {
        
        get {
            
            if let elev: Int = _elevation ?? 0 {
                
                return elev
                
            }
            
        }
        
    }
    
    convenience init(score: Double, id: String, name: String, county: String, elevation: Int, location: [Double]) {
        
        self.init(score: score, id: id)
        
        self._name = name
        self._location = AZSLocation(coords: location)
        self._county = county
        self._elevation = elevation
        
    }
    
}