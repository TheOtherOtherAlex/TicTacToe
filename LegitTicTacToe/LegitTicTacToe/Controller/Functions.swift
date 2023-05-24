//
//  Functions.swift
//  LegitTicTacToe
//
//  Created by Alex Zhang25 on 5/20/23.
//

import Foundation
import SwiftUI

func tapped(team: Bool) ->  (String,Int) {
    if team == true{
        return ("circle",13)
    }else{
        return ("xmark",17)
    }
}

func winCheck(boardState: [Int]) -> (String,Bool){
    if boardState[0]+boardState[1]+boardState[2] == 39 || boardState[3]+boardState[4]+boardState[5] == 39 || boardState[6]+boardState[7]+boardState[8] == 39 || boardState[0]+boardState[3]+boardState[8] == 39 || boardState[1]+boardState[4]+boardState[7] == 39 || boardState[2]+boardState[5]+boardState[8] == 39 || boardState[0]+boardState[4]+boardState[8] == 39 || boardState[2]+boardState[4]+boardState[6] == 39 {
        return ("O wins",true)
    } else if boardState[0]+boardState[1]+boardState[2] == 51 || boardState[3]+boardState[4]+boardState[5] == 51 || boardState[6]+boardState[7]+boardState[8] == 51 || boardState[0]+boardState[3]+boardState[6] == 51 || boardState[1]+boardState[4]+boardState[7] == 51 || boardState[2]+boardState[5]+boardState[8] == 51 || boardState[0]+boardState[4]+boardState[8] == 51 || boardState[2]+boardState[4]+boardState[6] == 51 {
        return ("X wins",true)
    }else if boardState[0]*boardState[1]*boardState[2]*boardState[3]*boardState[4]*boardState[5]*boardState[6]*boardState[7]*boardState[8] > 0{
        return ("stalemate!",true)
    } else {
        return ("",false)
    }
}

func generalFunc(team: Bool, boardState: [Int]) ->(String,Int,String,Bool){
    return (tapped(team: team).0,tapped(team: team).1,winCheck(boardState: boardState).0,winCheck(boardState: boardState).1)
}
