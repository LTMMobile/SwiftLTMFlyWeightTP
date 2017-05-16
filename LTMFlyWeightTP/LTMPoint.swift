//
//  LTMPoint.swift
//  LTMFlyWeightTP
//

import Foundation

struct LTMPoint {
    var x:Float = 0.0
    var y:Float = 0.0
    
    static func distance( from:LTMPoint, to:LTMPoint ) -> Float {
        return sqrt( pow((to.x - from.x), 2) + pow((to.y - from.y), 2) )
    }
}
