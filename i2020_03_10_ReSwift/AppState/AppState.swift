//
//  AppState.swift
//  i2020_03_10_ReSwift
//
//  Created by Bradford, Phillip on 3/10/20.
//  Copyright © 2020 Bradford, Phillip. All rights reserved.
//

import ReSwift

struct AppState: StateType {
    
    var counter: Int = 0
    var updateText: String = "None Yet"
    
    var buyCoordinatorState = BuyCoordinatorState(myInt: 0, myDouble: 0.0, myString: "Simple")
    
    var accountCoordinatorState = AccountCoordinatorState(newAccount: true, accountName: "First Account", accountNumber: 1)
    
}
