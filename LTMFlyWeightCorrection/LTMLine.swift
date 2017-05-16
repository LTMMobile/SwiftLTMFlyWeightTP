//
//  LTMLine.swift
//  LTMFlyWeightTP
//

import Foundation

import Foundation

class LTMLine : LTMShape {
    var p1:LTMPoint = LTMPoint()
    var p2:LTMPoint = LTMPoint()
        
    var color:LTMColor {
        get {
            return internalLine!.color
        }
        set(c) {
            internalLine = LTMFactoryShape.getInternalLine(color: c, thickness: thickness, type: type)
        }
    }
    
    var thickness:Double {
        get {
            return internalLine!.thickness
        }
        set(t) {
            internalLine = LTMFactoryShape.getInternalLine(color: color, thickness: t, type: type)
        }
    }
    
    var type:LTMTypeOfLine {
        get {
            return internalLine!.type
        }
        set(t) {
            internalLine = LTMFactoryShape.getInternalLine(color: color, thickness: thickness, type: t)
        }
    }
    
    var internalLine:LTMInternalShape? = nil
    
    var identifier:String
    
    override var id:String? {
        return identifier;
    }
    
    var length:Float {
        return LTMPoint.distance(from: p1, to: p2)
    }
    
    override var size:Int {
        return MemoryLayout.size(ofValue: p1) + MemoryLayout.size(ofValue: p2) + MemoryLayout.size(ofValue: internalLine!.color)
            + MemoryLayout.size(ofValue: internalLine!.thickness) + MemoryLayout.size(ofValue: internalLine!.type)
    }
    
    override func printShape() -> Void {
        print("id : \(identifier), \(p1), \(p2), color= \(internalLine!.color), thickness= \(internalLine!.thickness), type= \(internalLine!.type)")
    }
    
    init( id:String, from:LTMPoint, to:LTMPoint, color:LTMColor, thickness:Double, type:LTMTypeOfLine ) {
        self.p1 = from
        self.p2 = to
        
        internalLine = LTMFactoryShape.getInternalLine(color: color, thickness: thickness, type: type)
        
        self.identifier = id
    }
}
