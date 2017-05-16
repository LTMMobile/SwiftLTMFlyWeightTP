//
//  LTMConcreteLine.swift
//  LTMFlyWeightTP
//

import Foundation

class LTMConcreteShape : LTMInternalShape {
    
    var color:LTMColor = .black
    var thickness:Double = 1.0
    var type:LTMTypeOfLine = .continuous

    required init( color:LTMColor, thickness:Double, type:LTMTypeOfLine ) {
        self.color = color
        self.thickness = thickness
        self.type = type
    }
}
