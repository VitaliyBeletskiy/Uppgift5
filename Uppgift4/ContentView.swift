//
//  ContentView.swift
//  Uppgift4
//
//  Created by Vitaliy on 2023-10-22.
//

import SwiftUI

struct ContentView: View {
    let model = BillsModel()
    @State var result = ""
    var body: some View {
        VStack {
            Spacer()
            VStack {
                HStack {
                    Button(action: {
                        result = model.processImage(image: UIImage(named: "che_test")!)
                    }) {
                        Text("Button 1").font(.title)
                            .foregroundColor(.white).frame(width: 120.0, height: 80.0).background(.blue)
                    }
                    Button(action: {
                        result = model.processImage(image: UIImage(named: "gena_test")!)
                    }) {
                        Text("Button 2").font(.title)
                            .foregroundColor(.white).frame(width: 120.0, height: 80.0).background(.blue)
                    }
                }
                Text(result)
                    .padding(10)
                    .font(.largeTitle)
                    .foregroundStyle(.red)
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
