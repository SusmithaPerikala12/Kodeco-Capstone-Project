// This contains Side Menu content View with SF Symbol ,
// it will make use of SideMenuOptions.
// swift file to extract other options to the SideMenu.
import SwiftUI

struct SideMenuRowView: View {
    let option: SidemenuOptions
    // To track which options are tapped by the user.
    @Binding var selectedOption: SidemenuOptions?
    // To highlight which option is selected by checking with all the
    // options present in SideMenuOptions Model.
    // isSelected is a computed property.
    private var isSelected: Bool {
        return selectedOption == option
    }

    var body: some View {
        HStack {
            if option.systemImageName == "heart.fill" {
                Image(systemName: option.systemImageName)
                    .imageScale(.small)
                    .foregroundStyle(.red)
            } else {
                Image(systemName: option.systemImageName)
                    .imageScale(.small)
            }

            Text(option.title)
                .font(.subheadline)
            Spacer()
        }
        .padding(.leading)
        .frame(width: 216, height: 44)
        // blue background is used to highlight using isSelected computed property.
        .foregroundStyle(isSelected ? .pink : .primary)
        .background(isSelected ? .pink.opacity(0.15): .clear)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    SideMenuRowView(option: .home, selectedOption: .constant(.bmi))
}
