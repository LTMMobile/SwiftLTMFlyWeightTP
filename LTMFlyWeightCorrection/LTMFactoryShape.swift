//
//  LTMFactoryFlyWeight.swift
//  LTMFlyWeightTP
//

import Foundation

class LTMFactoryShape {
    
    typealias type_internal_line = (LTMColor, Double, LTMTypeOfLine)

    static var listeInternalShapes:Dictionary = Dictionary<String, LTMInternalShape>()
    
    /// getInternalLine
    class func getInternalLine ( color:LTMColor, thickness:Double, type:LTMTypeOfLine ) -> LTMInternalShape {
        
        let key:String = String("\(color)\(thickness)\(type)")
        
        var il:LTMInternalShape? = nil
        if let objet = listeInternalShapes[key] {
            il = objet
        }else {
            il = LTMConcreteShape(color: color, thickness: thickness, type: type)
            listeInternalShapes[key] = il
        }
    
        return il!
    }
    
    /// getInternalCircle
    class func getInternalCircle ( color:LTMColor, thickness:Double, type:LTMTypeOfLine ) -> LTMInternalShape {
        
        let key:String = String("\(color)\(thickness)\(type)")
        
        var il:LTMInternalShape? = nil
        if let objet = listeInternalShapes[key] {
            il = objet
        }else {
            il = LTMConcreteShape(color: color, thickness: thickness, type: type)
            listeInternalShapes[key] = il
        }
        
        return il!
    }

    
    /// modifyInternalLine
    class func modifyInternalLine( color:LTMColor, thickness:Double, type:LTMTypeOfLine ) -> LTMInternalShape {
        
        let il:LTMInternalShape? = self.getInternalLine(color: color, thickness: thickness, type: type)
        
        return il!
    }
}
