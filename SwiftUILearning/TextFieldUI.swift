//
//  TextFieldUI.swift
//  SwiftUILearning
//
//  Created by Jain, Divya on 03/07/20.
//  Copyright © 2020 Jain, Divya. All rights reserved.
//

import SwiftUI

struct TextFieldUI: View {
    @State private var color = Color.red
    @State private var text = "\\O , O/ \n     ^"
    
    var body: some View {
        VStack(spacing: 30) {
            Text(text)
                .padding()
                .background(self.color)
                .cornerRadius(50)
                .foregroundColor(Color.black)
                .shadow(color: Color.red, radius: 10, x: 0, y: 0)
                .overlay(
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(Color.red, lineWidth: 2)
            )
                .colorMultiply(Color.yellow)
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 1)) {
                        self.color = Color.yellow
                        self.text = "\\O , O/ \n     v"
                        
                    }
            }
            
            Text("TAP ME To make me smile")
                .font(.system(size: 25, weight: .bold, design: .default))
            
        }
    }
}

struct TextFieldUI_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldUI()
    }
}
