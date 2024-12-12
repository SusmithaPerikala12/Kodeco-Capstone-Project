// Side Menu View : Uses SideMenuRow View to insert to this View.
import SwiftUI

struct SideMenuView: View {
    // To control the side menu
    @Binding var isShowing: Bool
    // To know which option is selected.
    @Binding var selectedTab: Int
    // To highlight which tab is selected.
    @State private var selectedOption: SidemenuOptions?
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        ZStack {
            if isShowing {
                Rectangle()
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture { isShowing.toggle() }

                HStack {
                    VStack(alignment: .leading, spacing: 32) {
                        SideMenuHeaderView()

                        VStack {
                            ForEach(SidemenuOptions.allCases) { option in
                                Button {
                                    selectedOption = option
                                    selectedTab = option.rawValue
                                    isShowing.toggle()
                                } label: {
                                    SideMenuRowView(option: option, selectedOption: $selectedOption)
                                }

                            }
                        }
                        Spacer()
                    }
                    .padding()
                    .frame(width: 270, alignment: .leading) // width for HStack
                    .background(colorScheme == .dark ? .black: .white)
                    .foregroundStyle(colorScheme == .dark ? .white: .black)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    SideMenuView(isShowing: .constant(true), selectedTab: .constant(0))
}
