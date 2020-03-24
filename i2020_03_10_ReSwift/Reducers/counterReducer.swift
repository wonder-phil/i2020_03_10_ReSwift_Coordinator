//
//  counterReducer.swift
//  i2020_03_10_ReSwift
//
//  Created by Bradford, Phillip on 3/10/20.
//  Copyright © 2020 Bradford, Phillip. All rights reserved.
//

import ReSwift

func counterReducer(action: Action, state: AppState?) -> AppState {
    
    var state = state ?? AppState()
       
       switch action {
        
       case myActions.increment(let incString):
            state.counter += 1
            state.updateText = incString!
        
       case myActions.decrement(let decString):
            state.counter -= 1
            state.updateText = decString!
        
       default:
        break
       }
    
    return state
}
