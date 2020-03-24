//
//  File.swift
//  i2020_03_10_ReSwift
//
//  Created by Bradford, Phillip on 3/10/20.
//  Copyright © 2020 Bradford, Phillip. All rights reserved.
//

import ReSwift

func mainReducer(action: Action, state: AppState?) -> AppState {
    
    var state = state ?? AppState()
    
    switch action {
        
    case myActions.buyCoordinator:
        
        return buyReducer(action: action, state: state)
        
    case myActions.accountCoordinator:
        
        return accountReducer(action: action, state: state)
        
    default:
        return counterReducer(action: action, state: state)
    }
}
