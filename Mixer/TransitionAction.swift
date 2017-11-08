//
//  TransitionAction.swift
//  Mixer
//
//  Created by Jacob R. Abraham on 9/27/17.
//  Copyright © 2017 Jacob R. Abraham. All rights reserved.
//

import Foundation

//action for transition
class TransitionAction: GenericAction {
    
    //types of actions
    enum ActionType: Int, CustomStringConvertible {
        case None
        case Wait
        case Pause
        
        //string versions of the types
        var description: String {
            let names = ["", "Wait", "Pause"]
            return names[self.rawValue]
        }
        static let allTypes = [None, Wait, Pause]
    }
    
    //what the type is for this
    var type: ActionType
    
    //defualt init
    convenience required init() {
        self.init(type: .None)
    }
    //init with a type
    required init(type: ActionType) {
        self.type = type
    }
    
    //formatted name
    func getFormattedName() -> String {
        return type.description
    }
    func getTypes() -> [ActionType] {
        return ActionType.allTypes
    }
}
