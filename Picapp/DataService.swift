//
//  DataService.swift
//  Picapp
//
//  Created by Kafui Kumah on 7/26/17.
//  Copyright © 2017 Picapp Inc. All rights reserved.
//

import Foundation
import Firebase


let DB_BASE = Database.database().reference()

class DataService {
    
    static let ds = DataService()
    
    
    private var _REF_BASE = DB_BASE
    private var _REF_CUISINES = DB_BASE.child("cuisines")
    private var _REF_CUISINE_PRODUCTS = DB_BASE.child("cuisine_products")
    private var _REF_ORDERS = DB_BASE.child("orders")
    private var _REF_USERS = DB_BASE.child("users")
    
    var REF_BASE: DatabaseReference{
        return _REF_BASE
    }
    
    var REF_CUISINES: DatabaseReference{
        return _REF_CUISINES
    }
    
    var REF_CUISINE_PRODUCTS: DatabaseReference{
        return _REF_CUISINE_PRODUCTS
    }
    
    var REF_ORDERS: DatabaseReference{
        return _REF_ORDERS
    }
    
    var REF_USERS: DatabaseReference{
        return _REF_USERS
    }

    
    func createFirebaseDBUser(uid: String, userData: Dictionary<String, String>){
        REF_USERS.child(uid).updateChildValues(userData)
    }
    
    
}
