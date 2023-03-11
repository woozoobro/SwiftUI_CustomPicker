//
//  PickerMenuList.swift
//  CustomPicker
//
//  Created by 우주형 on 2023/03/11.
//

import SwiftUI

struct PickerMenuList: View {
    let list = Fruit.list
    let sendAction: (_ fruit: Fruit) -> Void
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(list) { fruit in
                    Button {
                        sendAction(fruit)
                    } label: {
                        Text(fruit.title)
                            .font(.largeTitle)
                            .foregroundColor(.orange)
                            .padding(.vertical, 2)
                            .frame(maxWidth: .infinity)                            
                    }
                }
            }
            .padding(.vertical)
        }
        .frame(height: 300)
        .background {
            RoundedRectangle(cornerRadius: 10)
                .stroke(.gray, lineWidth: 2)
        }
    }
}

struct PickerMenuList_Previews: PreviewProvider {
    static var previews: some View {
        PickerMenuList(sendAction: { _ in })
    }
}
