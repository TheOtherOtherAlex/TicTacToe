//
//  ContentView.swift
//  LegitTicTacToe
//
//  Created by Alex Zhang25 on 5/20/23.
//

//fill in with either xmark, or circle, or

import SwiftUI

struct ContentView: View {
        
    @State var boxFillInValue:[String] = ["","","","","","","","",""]
    @State var teamToPlay: Bool = false
    @State var whoWon : String = ""
    @State var boxValues:[Int] = [0,0,0,0,0,0,0,0,0]
    @State var titleText: String = ""
    @State var lockout: Bool = false
    
    //false is circle, true is x.
    var body: some View {
        VStack(){
            if lockout == false {
                if teamToPlay == false{
                    Text("X to Play")
                }else{
                    Text("O to Play")
                }
               }else{
                    Text("")
            }
            Text(titleText)
                .padding()
            VStack(){
                HStack(){
                    Rectangle()
                        .squareLook(fillValue: boxFillInValue[0])
                        .onTapGesture {
                            if boxFillInValue[0] == "" && boxValues[0] == 0 && lockout == false{
                                boxFillInValue[0] = generalFunc(team: teamToPlay, boardState: boxValues).0
                                boxValues[0] = generalFunc(team: teamToPlay, boardState: boxValues).1
                                titleText = generalFunc(team: teamToPlay, boardState: boxValues).2
                                lockout = generalFunc(team: teamToPlay, boardState: boxValues).3
                                teamToPlay.toggle()
                            }
                        }
                    Rectangle()
                        .squareLook(fillValue: boxFillInValue[1])
                        .onTapGesture {
                            if boxFillInValue[1] == "" && boxValues[1] == 0 && lockout == false{
                                boxFillInValue[1] = generalFunc(team: teamToPlay, boardState: boxValues).0
                                boxValues[1] = generalFunc(team: teamToPlay, boardState: boxValues).1
                                titleText = generalFunc(team: teamToPlay, boardState: boxValues).2
                                lockout = generalFunc(team: teamToPlay, boardState: boxValues).3
                                teamToPlay.toggle()
                            }
                        }
                    Rectangle()
                        .squareLook(fillValue: boxFillInValue[2])
                        .onTapGesture {
                            if boxFillInValue[2] == "" && boxValues[2] == 0 && lockout == false{
                                boxFillInValue[2] = generalFunc(team: teamToPlay, boardState: boxValues).0
                                boxValues[2] = generalFunc(team: teamToPlay, boardState: boxValues).1
                                titleText = generalFunc(team: teamToPlay, boardState: boxValues).2
                                lockout = generalFunc(team: teamToPlay, boardState: boxValues).3
                                teamToPlay.toggle()
                            }
                        }
                }
                HStack{
                    Rectangle()
                        .squareLook(fillValue: boxFillInValue[3])
                        .onTapGesture {
                            if boxFillInValue[3] == "" && boxValues[3] == 0 && lockout == false{
                                boxFillInValue[3] = generalFunc(team: teamToPlay, boardState: boxValues).0
                                boxValues[3] = generalFunc(team: teamToPlay, boardState: boxValues).1
                                titleText = generalFunc(team: teamToPlay, boardState: boxValues).2
                                lockout = generalFunc(team: teamToPlay, boardState: boxValues).3
                                teamToPlay.toggle()
                            }
                        }
                    Rectangle()
                        .squareLook(fillValue: boxFillInValue[4])
                        .onTapGesture {
                            if boxFillInValue[4] == "" && boxValues[4] == 0 && lockout == false{
                                boxFillInValue[4] = generalFunc(team: teamToPlay, boardState: boxValues).0
                                boxValues[4] = generalFunc(team: teamToPlay, boardState: boxValues).1
                                titleText = generalFunc(team: teamToPlay, boardState: boxValues).2
                                lockout = generalFunc(team: teamToPlay, boardState: boxValues).3
                                teamToPlay.toggle()
                            }
                        }
                    Rectangle()
                        .squareLook(fillValue: boxFillInValue[5])
                        .onTapGesture {
                            if boxFillInValue[5] == "" && boxValues[5] == 0 && lockout == false{
                                boxFillInValue[5] = generalFunc(team: teamToPlay, boardState: boxValues).0
                                boxValues[5] = generalFunc(team: teamToPlay, boardState: boxValues).1
                                titleText = generalFunc(team: teamToPlay, boardState: boxValues).2
                                lockout = generalFunc(team: teamToPlay, boardState: boxValues).3
                                teamToPlay.toggle()
                            }
                        }
                }
                HStack{
                    Rectangle()
                        .squareLook(fillValue: boxFillInValue[6])
                        .onTapGesture {
                            if boxFillInValue[6] == "" && boxValues[6] == 0 && lockout == false{
                                boxFillInValue[6] = generalFunc(team: teamToPlay, boardState: boxValues).0
                                boxValues[6] = generalFunc(team: teamToPlay, boardState: boxValues).1
                                titleText = generalFunc(team: teamToPlay, boardState: boxValues).2
                                lockout = generalFunc(team: teamToPlay, boardState: boxValues).3
                                teamToPlay.toggle()
                            }
                        }
                    Rectangle()
                        .squareLook(fillValue: boxFillInValue[7])
                        .onTapGesture {
                            if boxFillInValue[7] == "" && boxValues[7] == 0 && lockout == false{
                                boxFillInValue[7] = generalFunc(team: teamToPlay, boardState: boxValues).0
                                boxValues[7] = generalFunc(team: teamToPlay, boardState: boxValues).1
                                titleText = generalFunc(team: teamToPlay, boardState: boxValues).2
                                lockout = generalFunc(team: teamToPlay, boardState: boxValues).3
                                teamToPlay.toggle()
                            }
                        }
                    Rectangle()
                        .squareLook(fillValue: boxFillInValue[8])
                        .onTapGesture {
                            if boxFillInValue[8] == "" && boxValues[8] == 0 && lockout == false{
                                boxFillInValue[8] = generalFunc(team: teamToPlay, boardState: boxValues).0
                                boxValues[8] = generalFunc(team: teamToPlay, boardState: boxValues).1
                                titleText = generalFunc(team: teamToPlay, boardState: boxValues).2
                                lockout = generalFunc(team: teamToPlay, boardState: boxValues).3
                                teamToPlay.toggle()
                            }
                        }
                }
            }
            .frame(width: 300,height: 300)
            Text("restart")
                .padding()
                .background(Color.blue)
                .cornerRadius(15)
                .onTapGesture {
                    boxValues = [0,0,0,0,0,0,0,0,0]
                    titleText = ""
                    boxFillInValue = ["","","","","","","","",""]
                    teamToPlay = false
                    whoWon = ""
                    lockout = false
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
