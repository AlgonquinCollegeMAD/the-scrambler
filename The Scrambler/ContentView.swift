//
//  ContentView.swift
//  The Scrambler
//
//  Created by Vladimir Cezar on 2023-09-28.
//

import SwiftUI

struct ContentView: View {
  
  @State var word: String = "
  var anagram: String {
    word
      .split(separator: "")
      .shuffled()
      .joined(separator: "")
  }
  
  var body: some View {
    VStack {
      HStack {
        TextField("Type a word", text: $word)
          .textInputAutocapitalization(.never)
          .frame(height: 30)
          .padding()
        
        if !word.isEmpty {
          Button(action: {
            word = ""
          }) {
            Image(systemName: "xmark.circle.fill")
              .foregroundColor(.primary)
          }
          .padding()
        }
      }
      .background(
        Capsule()
          .foregroundColor(.gray.opacity(0.2))
      )
      .padding()
      Text(anagram)
        .frame(height: 30)
        .padding()
    }
    .padding()
  }
}

#Preview {
  ContentView()
}
