//
//  Extensions.swift
//  MeditationApp
//
//  Created by Student on 16.05.2023.
//

import Foundation

extension DateComponentsFormatter{
    static let abbreviated: DateComponentsFormatter = {
       print("Initializing DateCOmponentsFormatter.abbreviated")
        let formatter = DateComponentsFormatter()
        
        formatter.allowedUnits = [.hour, .minute, .second]
        formatter.unitsStyle = .abbreviated
        
        return formatter
    }()
    
    static let positional: DateComponentsFormatter = {
       print("Initializing DateCOmponentsFormatter.positional")
        let formatter = DateComponentsFormatter()
        
        formatter.allowedUnits = [ .minute, .second]
        formatter.unitsStyle = .positional
        formatter.zeroFormattingBehavior = .pad
        
        return formatter
    }()
}
