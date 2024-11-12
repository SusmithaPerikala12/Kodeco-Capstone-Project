//This contains Side Menu content View with SF Symbol , it will make use of SideMenuOptions.swift file to extract other options to the SideMenu.
import SwiftUI

struct SideMenuRowView: View {
    let option: SidemenuOptions
    var body: some View {
        HStack {
            
            if(option.systemImageName == "heart.fill")
            {
                Image(systemName: option.systemImageName)
                    .imageScale(.small)
                    .foregroundStyle(.red)
            }
            else {
                Image(systemName: option.systemImageName)
                    .imageScale(.small)
            }
            Text(option.title)
                .font(.subheadline)
            Spacer()
                
        }
        .padding(.leading)
        .frame(width:216, height: 44)

    }
}

#Preview {
    SideMenuRowView(option: .Home)
}
