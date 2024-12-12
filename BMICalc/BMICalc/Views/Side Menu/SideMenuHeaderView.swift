// This contains Sidemenu Header Details like Name, etc.
import SwiftUI

struct SideMenuHeaderView: View {
    @Environment(\.colorScheme) var colorScheme
    @AppStorage("isDarkMode") private var isDarkMode = false

    var body: some View {
        HStack {
            Image(systemName: "star.circle")
                .imageScale(.large)
                .foregroundStyle(.white)
                .frame(width: 48, height: 48)
                .background(.pink)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.vertical)

            VStack(alignment: .leading, spacing: 6) {
                Text("Welcome!!!")
                    .font(.subheadline)
            }

            Spacer()

            Button {
                isDarkMode.toggle()
                setAppearance()
            } label: {
                Image(systemName: isDarkMode ? "moon.circle.fill" : "sun.max")
                    .font(.title3)
            }
        }
        .onAppear {
            setAppearance()
        }
    }
    private func setAppearance() {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return
        }
        windowScene.keyWindow?.overrideUserInterfaceStyle = isDarkMode ? .dark : .light
    }
}

#Preview {
    SideMenuHeaderView()
}
