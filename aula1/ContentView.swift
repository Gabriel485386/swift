//
//  ContentView.swift
//  aula1
//
//  Created by COTEMIG on 11/03/25.
//

import SwiftUI
struct ContentView: View {
    @State private var username: String = ""
    @State private var dogage: String = ""
    var body: some View {
        ZStack {
            Image( "download")
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            Text("Calculadora de idade canina")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            TextField(
                "Digite a idade humana:", text: $username)
                .frame(width: 150)
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .keyboardType(.numberPad)
            
            
            Button(action: cic){
                Text("calcular").padding().frame(width: 150).background(Color.purple).foregroundColor(.white).cornerRadius(10)
            }
                        
            if !dogage.isEmpty{
                Text("idade em anos caninos \(dogage)")
                    .font(.headline)
                    .padding()
            }
        }
    }
            
    func cic(){
        if let age = Int(username) {
            let result = age*7
            dogage = "\(result) anos"
        }
        else{
            dogage = "Digite um número válido"
        }
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

