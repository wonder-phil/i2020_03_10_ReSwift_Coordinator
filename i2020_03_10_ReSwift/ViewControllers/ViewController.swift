//
//  ViewController.swift
//  i2020_03_10_ReSwift
//
//  Created by Bradford, Phillip on 3/10/20.
//  Copyright © 2020 Bradford, Phillip. All rights reserved.
//

import UIKit
import ReSwift



class ViewController: UIViewController, Storyboarded, StoreSubscriber {
    
    var coordinator : MainCoordinator?
    
    @IBOutlet weak var buybutton: UIButton!
    @IBOutlet weak var accountbutton: UIButton!
    @IBOutlet weak var valueBox: UITextField!
    @IBOutlet weak var descriptionBox: UITextField!
    
    typealias StoreSubscriberStateType = AppState
    
    func newState(state: AppState) {
        valueBox.text = "\(state.counter)"
        descriptionBox.text = "\(state.updateText)"
    }
    
    override func viewWillAppear(_ animated: Bool) {
         mainStore.subscribe(self)
     }
     
     override func viewWillDisappear(_ animated: Bool) {
         mainStore.unsubscribe(self)
     }
         
     override func viewDidLoad() {
         super.viewDidLoad()
         // Do any additional setup after loading the view.
     }
     
 
    
    @IBAction func buyButton(_ sender: Any) {
        coordinator?.buySubscription()
        print("buyButton")
    }
    @IBAction func accountButton(_ sender: Any) {
        coordinator?.createAccount()
    }
    
    @IBAction func increment(_ sender: Any) {
        mainStore.dispatch(myActions.increment("Increment"))
    }
    
    @IBAction func decrement(_ sender: Any) {
        mainStore.dispatch(myActions.decrement("Decrement!"))
    }
    
 


}

