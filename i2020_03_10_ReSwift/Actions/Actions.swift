//
//  Actions.swift
//  i2020_03_10_ReSwift
//
//  Created by Bradford, Phillip on 3/10/20.
//  Copyright © 2020 Bradford, Phillip. All rights reserved.
//

import ReSwift

enum myActions {
    
    typealias RawValue = String
    
    case buyCoordinator(buyCoordinatorData?)
    case accountCoordinator(accountCoordinatorData?)
    
    enum subActions {
        case sub1
        case sub2
    }
    
    case increment(String?)
    case decrement(String?)
    case buy2loan(String?)
    case load2buy(String?)
}


extension myActions : Action {
    
}
