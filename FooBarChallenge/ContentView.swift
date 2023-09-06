//
//  ContentView.swift
//  FooBarChallenge
//
//  Created by Lorenzo J. Ablis on 9/1/23.
//

import SwiftUI

struct ContentView: View {
    @State private var bgColor: Color = .black
    @State private var number: Int = 0
    @State private var fooBar: String = ""
    
    var body: some View {
        ZStack {
            bgColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(fooBar)
                    .font(.system(size:100))
                    .foregroundColor(.white)
                Text("\(number)")
                    .font(.system(size:150))
                    .foregroundColor(.white)
            }
        }
        .onTapGesture {
            number += 1
            update()
        }
        .onLongPressGesture(minimumDuration: 2) {
            number = 0
            bgColor = .black
        }
    }
    
    func update() {
        if (number % 3 == 0) && (number % 5 == 0) {
            bgColor = .red
            fooBar = "Foo\nBar"
        } else if number % 3 == 0 {
            bgColor = .green
            fooBar = "Foo"
        } else if number % 5 == 0 {
            bgColor = .yellow
            fooBar = "Bar"
        } else {
            bgColor = .black
            fooBar = ""
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
