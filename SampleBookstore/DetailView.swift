//
//  DetailView.swift
//  SampleBookstore
//
//  Created by Juan Hernandez Pazos on 27/04/22.
//

import SwiftUI

struct DetailView: View {
    
    @State private var animate = false
    
    var randomMinRange = 5.0
    var randomMaxRange = 8.0
    
    var body: some View {
        VStack {
            Image("perdon")
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(color: .black, radius: 10, x: 1, y: 1)
                .frame(width: 200, height: 300)
                .scaleEffect(animate ? 1 : 0.1)
                .rotationEffect(.degrees(animate ? 0: 180))
                .opacity(animate ? 1 : 0)
            
            VStack {
                Text("John Grisham")
                    .font(.headline)
                    .foregroundColor(.gray)
                    .padding(.top)
                
                Text("Tiempo de perdón")
                    .font(.title3)
                    .fontWeight(.semibold)
                
                
                Text("Clanton, Mississippi, 1990. Stuart Kofer, ayudante del sheriff, se considera intocable. Aunque, cuando bebe más de la cuenta, algo bastante habitual, vuelca sus ataques de ira en su novia, Josie, y los hijos adolescentes de esta, el código de silencio de la policía siempre le ha protegido")
                    .font(.callout)
                    .lineSpacing(4.0)
                    .foregroundColor(.gray)
                    .padding()
                    .lineLimit(4)
                
                HStack {
                    Text("Drama")
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .padding(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                        .rotationEffect(.degrees(animate ? 0 : 180))
                        .opacity(animate ? 1: 0)
                        .animation(.spring(response: 0.7, dampingFraction: 0.4, blendDuration: 100).delay(Double.random(in: randomMinRange..<randomMaxRange) * 0.1), value: animate)
                    
                    Text("Action")
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .padding(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                        .rotationEffect(.degrees(animate ? 0 : 180))
                        .opacity(animate ? 1: 0)
                        .animation(.spring(response: 0.7, dampingFraction: 0.4, blendDuration: 100).delay(Double.random(in: randomMinRange..<randomMaxRange) * 0.1), value: animate)
                    
                    Text("Novel")
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .padding(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                        .rotationEffect(.degrees(animate ? 0 : 180))
                        .opacity(animate ? 1: 0)
                        .animation(.spring(response: 0.7, dampingFraction: 0.4, blendDuration: 100).delay(Double.random(in: randomMinRange..<randomMaxRange) * 0.1), value: animate)
                }
                
                Divider()
                    .padding(10)
                
                Button(action: {}) {
                    Text("Comprar por $159.00")
                        .fontWeight(.medium)
                        .foregroundColor(Color.white)
                        
                }
                .buttonStyle(.bordered)
                .buttonBorderShape(.roundedRectangle(radius: 0))
                .controlSize(.large)
                .background(Color.black)
                .cornerRadius(40)
            }
        }
        .onAppear {
            withAnimation {
                animate.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
