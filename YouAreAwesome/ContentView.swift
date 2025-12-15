//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Student3 on 11/3/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var lastImageNumber = -1
    @State private var lastmessageNumber = -1
    
    var body: some View {
        
        VStack {
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height:100)
                .animation(.easeInOut(duration: 0.15), value:message)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius:30)
                .animation(.default, value: imageName)
            
            Spacer()
            
            
            Button("Show Message"){
                let messages = ["You are Awesome!",
                                "When the Genius Bar  Needs Help, They Call You",
                                "You are Great!",
                                "You are Fantastic",
                                "Fabulous? That's You!",
                                "You Make Me Smile",
                ]
                
                var messageNumber : Int
                repeat{
                    messageNumber = Int.random(in: 0...messages.count-1)
                } while messageNumber == lastmessageNumber
                message = messages[messageNumber]
                lastmessageNumber = messageNumber
                
                var imageNumber = Int.random(in: 0...9)
                while imageNumber == lastImageNumber{
                    imageNumber = Int.random(in: 0...9)
                }
                imageName = "image\(imageNumber)"
                lastImageNumber = imageNumber
                
            }
            
            
            
                    .buttonStyle(.borderedProminent)
                    .font(.title2)
            }
            .padding()
        }
    }
        #Preview {
            ContentView()
        }
