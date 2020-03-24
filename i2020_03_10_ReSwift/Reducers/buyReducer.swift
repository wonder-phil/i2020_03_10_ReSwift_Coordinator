//
//  buyReducer.swift
//  i2020_03_10_ReSwift
//
//  Created by Bradford, Phillip on 3/10/20.
//  Copyright © 2020 Bradford, Phillip. All rights reserved.
//

import ReSwift

func buyReducer(action: Action, state: AppState?) -> AppState {
    
    var state = state ?? AppState()
       
       switch action {
        
       case myActions.buyCoordinator(let  buyCoordinatorData):
            state.counter = 0
            state.buyCoordinatorState.myInt = buyCoordinatorData!.numberOfUnits
            state.buyCoordinatorState.myString = buyCoordinatorData!.packingLabel
        
       case myActions.accountCoordinator(let accountCoordinatorData):
        state.accountCoordinatorState.accountName = accountCoordinatorData!.packingLabel
            
       default:
        break
       }
    
    return state
}
