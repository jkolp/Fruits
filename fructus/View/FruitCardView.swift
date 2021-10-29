//
//  FruitCardView.swift
//  fructus
//
//  Created by Jasper K on 9/24/21.
//

import SwiftUI

struct FruitCardView: View {
    
// MARK: - Properties
    
    var fruit: Fruit
    
    @State private var isAnimating: Bool = false
    
    
// MARK: - Body
    
    var body: some View {
        ZStack {

            VStack(spacing: 20) {
                // Fruit: Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red:0, green: 0, blue: 0, opacity: 0.25), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                // Fruit: Title
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 2, x: 2, y: 2)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                // Fruit: Headline
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                // Button: Start
                StartButtonView()
                    
            }// VSTACK
        } // ZSTACK
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        })
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
        
        
    }
    
}

// MARK: - Preview

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[7])
            .previewLayout(PreviewLayout.fixed(width: 320, height: 640))
    }
}

