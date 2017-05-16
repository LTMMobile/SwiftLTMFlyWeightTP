//
//  LTMInternalLine.swift
//  LTMFlyWeightTP
//

import Foundation

protocol LTMInternalShape {
    init( color:LTMColor, thickness:Double, type:LTMTypeOfLine )
    
    var color:LTMColor { get }
    var thickness:Double { get }
    var type:LTMTypeOfLine { get }
}
