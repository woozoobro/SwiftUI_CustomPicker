//
//  PickerMenu.swift
//  CustomPicker
//
//  Created by 우주형 on 2023/03/11.
//

import SwiftUI

struct PickerMenu: View {
    @State private var isPresented: Bool = false
    @Binding var selectedFruit: Fruit?
    let placeholder: String
    
    var body: some View {
        Button {
            isPresented.toggle()
        } label: {
            HStack {
                Text(selectedFruit != nil ? selectedFruit?.title ?? "" : placeholder)
                    .foregroundColor(selectedFruit != nil ? .orange : .gray)
                Spacer()
                Image(systemName: "chevron.down")
                    .rotationEffect(Angle(degrees: isPresented ? 180 : 0))
            }
            .font(.title3)
            .padding(.horizontal)
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 10)
                .stroke(.gray, lineWidth: 2)
        }
        .overlay(alignment: .top) {
            VStack {
                if isPresented {
                    Spacer(minLength: 60)
                    PickerMenuList { fruit in
                        isPresented = false
                        selectedFruit = fruit
                    }
                }
            }
        }

    }
}

struct PickerMenu_Previews: PreviewProvider {
    static var previews: some View {
        PickerMenu(selectedFruit: .constant(nil), placeholder: "과일을 선택해주세요")
    }
}
