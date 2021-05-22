//
//  ContentView.swift
//  SwiftUIARKit
//
//  Created by Gualtiero Frigerio on 18/05/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var arDelegate = ARDelegate()
    
    var body: some View {
        ZStack {
            ARViewRepresentable(arDelegate: arDelegate)
            VStack {
                Spacer()
                Text(arDelegate.message)
                    .frame(maxWidth: .infinity)
                    .padding(.bottom, 20)
                    .background(Color.secondary)
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
