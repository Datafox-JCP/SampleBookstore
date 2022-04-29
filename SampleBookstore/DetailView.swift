//
//  DetailView.swift
//  SampleBoolstore
//
//  Created by Juan Hernandez Pazos on 27/04/22.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack {
            Image("astucia")
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(color: .black, radius: 10, x: 1, y: 1)
                .frame(width: 200, height: 300)
                        
            VStack {
                Text("Lucas Bracco")
                    .font(.headline)
                    .foregroundColor(.gray)
                    .padding(.top)
                    
                Text("EL PEQUEÑO LIBRO DE LA ASTUCIA")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .padding(.top)
                
                Text("Es un griego el primero que le muestra a Occidente una valiosa lección sobre las ventajas del ingenio sobre la fuerza. Ulises —u Odiseo (Ὀδυσσεὺς) si atendemos a su nombre en griego— es uno de los personajes clave de la mitología griega y tan importante como Hércules o Aquiles. Sin embargo, a diferencia de estos últimos, Ulises no es ni el mejor guerrero, ni el más fuerte, ni el más valiente. Con Ulises estamos ante el triunfo de la astucia. Es el héroe pícaro, bribón y taimado que siempre encuentra alguna treta cuando algo va mal; que siempre concibe algún invento para darle vuelta a una situación difícil y así ganarle a los más fuertes. En él se encarna el célebre dicho «Más vale maña que fuerza», uno de los principios básicos de la astucia. Ahora bien, aquí no entenderemos la astucia como manipulación o maquiavelismo, sino como prudencia, inteligencia, sagacidad y discreción.")
                    .font(.headline)
                    .foregroundColor(.gray)
                    .padding()
                    .lineLimit(4)
                
                HStack {
                    Button(action: {}) {
                        Text("Fantasía")
                            .padding()
                            .border(Color.gray, width: 1)
                            .cornerRadius(20)
                    }
                    .padding()
                    
                    Button(action: {}) {
                        Text("Acción")
                            .padding()
                            .border(Color.gray, width: 1)
                            .cornerRadius(20)
                    }
                    .padding()
                    Button(action: {}) {
                        Text("Novela")
                            .padding()
                            .border(Color.gray, width: 1)
                            .cornerRadius(20)
                    }
                    .padding()
                
                }
                .accentColor(.black)
                
                Button(action: {}) {
                    Text("Comprar por $180.00")
                        .fontWeight(.medium)
                    .padding()
                    .foregroundColor(Color.white)
                    .background(Color.black)
                    .cornerRadius(32)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
