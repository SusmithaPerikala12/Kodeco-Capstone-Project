// Side Menu View : Uses SideMenuRow View to insert to this View.
import SwiftUI

struct SideMenuView: View {
    // To control the side menu
    @Binding var isShowing: Bool
    // To know which option is selected.
    @Binding var selectedTab: Int
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
                                    selectedTab = option.rawValue
                                    isShowing.toggle()
                                } label: {
                                    SideMenuRowView(option: option)
                                }

                            }
                        }
                        Spacer()
                    }
                    .padding()
                    .frame(width: 270, alignment: .leading) // width for HStack
                    .background(.white)
                    .foregroundStyle(.black)
                    Spacer()
                }

            }
        }
    }
}

#Preview {
    SideMenuView(isShowing: .constant(true), selectedTab: .constant(0))
}
