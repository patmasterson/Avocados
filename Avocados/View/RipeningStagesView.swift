//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Patrick Masterson on 10/19/22.
//

import SwiftUI

struct RipeningStagesView: View {
    // MARK: - properties
    
    var ripeningStages = ripeningData
    
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { item in
                        RipeningView(ripening: item)
                    }
                }
                .padding()
                
                Spacer()
            }
        }
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStages: ripeningData)
    }
}
