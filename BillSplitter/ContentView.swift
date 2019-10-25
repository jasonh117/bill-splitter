//
//  ContentView.swift
//  BillSplitter
//
//  Created by Jason Hsieh on 10/22/19.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        VStack(alignment: .leading) {
            
            NavigationView {
                VStack {
                    NavigationLink(destination: SplitEvenlyView()) {
                        Text("Split Evenly")
                    }
                        .navigationBarTitle(Text("Home"))
                    Spacer()
                        .frame( maxHeight: 50 )
                    NavigationLink(destination: SplitByItemsView()) {
                        Text("Split By Items")
                    }
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
