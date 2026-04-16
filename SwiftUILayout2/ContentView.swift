//
//  ContentView.swift
//  SwiftUILayout2
//
//  Created by Mark Nair on 4/16/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            
            HStack {
                
                PricingView(
                    title: "Basic",
                    price: "$9",
                    textColor: .white,
                    backgroundColor: .purple
                )
                
                ZStack {
                    PricingView(
                        title: "Pro",
                        price: "$19",
                        textColor: .black,
                        backgroundColor: Color(red: 240/255, green: 240/255, blue: 240/255)
                    )
                    
                    Text("Best for Padawans")
                        .font(.system(.caption, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .padding(5)
                        .background(Color(red: 255/255, green: 183/255, blue: 37/255))
                        .offset(x: 0, y: 87)
                    
                        
                }
            }
        }
        .padding(.horizontal)
    }
}

struct PricingView: View {
    let title: String
    let price: String
    let textColor: Color
    let backgroundColor: Color

    var body: some View {
        VStack {
            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.bold)
                .foregroundStyle(textColor)
            Text(price)
                .font(.system(size: 40, weight: .heavy, design: .rounded))
                .foregroundStyle(textColor)
            Text("per month")
                .font(.headline)
                .foregroundStyle(textColor)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(40)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text("Choose Your")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.bold)
            Text("Training Plan")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.bold)
        }
    }
}

#Preview {
    ContentView()
}
