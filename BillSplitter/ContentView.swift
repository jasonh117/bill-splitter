//
//  ContentView.swift
//  BillSplitter
//
//  Created by Jason Hsieh on 10/22/19.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isSplitEvenlyActive: Bool = false
    @State private var isSplitItemsActive: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            
            NavigationView {
                VStack {
                    NavigationLink(destination: SplitEvenlyView(), isActive: self.$isSplitEvenlyActive) {
                        Text("")
                    }
                    Button("Split Evenly") {
                        self.isSplitEvenlyActive = true
                    }

                    Spacer()
                        .frame( maxHeight: 50 )
                    NavigationLink(destination: SplitByItemsView(), isActive: self.$isSplitItemsActive) {
                        Text("")
                    }
                    Button("Split By Items") {
                        self.isSplitItemsActive = true
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
