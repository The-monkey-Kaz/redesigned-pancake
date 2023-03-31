//
//  ContentView.swift
//  AngelaCard
//
//  Created by myruei on 2023/03/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Angela-Yu")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Angela Yu")
                    .font(Font.custom("Pacifico", size: 40))
                    .foregroundColor(.white)
                    .bold()
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                Color(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .frame(width: 350, height: 40)
                    .overlay {
                        HStack {
                            Image(systemName: "phone.fill")
                                .foregroundColor(.green)
                            Text("+44 123 456 789")
                        }
                    }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
