//
//  SplitEvenlyView.swift
//  BillSplitter
//
//  Created by Joseph Poon on 10/23/19.
//

import SwiftUI

struct SplitEvenlyView: View {
    
    @State var beforeTax: String = ""
    @State var afterTax: String = ""
    @State var tips: String = ""
    @State var partySize: String = ""
    @State private var isResultActive: Bool = false
    
    var body: some View {
        VStack {
            TextField("Bill Before Tax", text: $beforeTax)
                .border(Color.black).frame(width: 150, height: 30, alignment: .center)
            TextField("Bill After Tax", text: $afterTax)
                .border(Color.black).frame(width: 150, height: 30, alignment: .center)
            TextField("Tips (%)", text: $tips)
                .border(Color.black).frame(width: 150, height: 30, alignment: .center)
            TextField("Party Size", text: $partySize)
                .border(Color.black).frame(width: 150, height: 30, alignment: .center)
            
            NavigationLink(destination: ResultView()) {
                Text("Calculate")
            }
                .navigationBarTitle(Text("Split"))
        }
    }
}

struct SplitEvenlyView_Previews: PreviewProvider {
    static var previews: some View {
        SplitEvenlyView()
    }
}
