//
//  ContentView.swift
//  CustomPicker
//
//  Created by 우주형 on 2023/03/11.
//

import SwiftUI

struct ContentView: View {
    @State var selectedFruit: Fruit? = nil
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            
            PickerMenu(selectedFruit: $selectedFruit, placeholder: "과일을 선택해주세요")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
