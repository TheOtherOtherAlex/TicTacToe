//
//  Extension.swift
//  LegitTicTacToe
//
//  Created by Alex Zhang25 on 5/20/23.
//

import Foundation
import SwiftUI



extension Shape {
    func squareLook(fillValue: String) -> some View{
        self
            .size(width: 100, height: 100)
            .cornerRadius(15)
            .foregroundColor(Color.black)
            .overlay(Image(systemName: fillValue))
                .foregroundColor(.white)
                .imageScale(.large)
    }
}

