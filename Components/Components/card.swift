import SwiftUI

struct home: View {
	 @State var sheet_toggle: Bool = false
	 var imageAspectRatio: CGFloat = 3/2
	 var innerCorner: CGFloat = 32 - 16

	 var body: some View {
			NavigationStack {
				 ZStack {
						Color.white.mix(with: .gray, by: 0.2) // Set the entire background to green
							 .ignoresSafeArea() // Extend to edges, including safe areas
						VStack {
							 VStack {
									Rectangle()
										 .aspectRatio(imageAspectRatio, contentMode: .fit)
										 .overlay {
												Image("court")
													 .resizable()
													 .scaledToFill()
										 }
										 .clipShape(.rect(cornerRadius: innerCorner, style: .circular))
										 .padding(16)
									VStack(alignment: .leading, spacing: 8) {
										 HStack {
												Text("Can Tho Club")
													 .font(.title2.bold())
													 .frame(maxWidth: .infinity, alignment: .leading)
												HStack(spacing: 4) {
													 Image(systemName: "star.fill")
													 Text("4.5")
												}
												.foregroundStyle(.secondary)
												.font(.subheadline.bold())
										 }
										 Text("Pickleball cub in CT")
												.font(.subheadline)
												.foregroundStyle(.secondary)
									}
									.padding()
									Button("Reserve") {
										 print("reserved")
									}
									.buttonStyle(ReserveButtonStyle(cornerRadius: innerCorner))
									.padding(.horizontal)
									.padding(.top, -20)
									.padding(.vertical)

							 }
							 .background(.background, in: .rect(cornerRadius: 32, style: .circular))
							 .padding(.horizontal)
							 .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 0, y: 0)
							 .frame(maxWidth: 380)
						}
						.navigationTitle("Play")
						.sheet(isPresented: $sheet_toggle) {
						}
						.toolbar {
							 ToolbarItem(placement: .topBarTrailing) {
									Button {
										 sheet_toggle.toggle()
									} label: {
										 Image(systemName: "line.3.horizontal.decrease.circle.fill")
									}
							 }
						}
				 }
			}
	 }
}

#Preview {
	 home()
}

struct ReserveButtonStyle: ButtonStyle {
	 var cornerRadius: CGFloat = 12
	 var foregroundColor: Color = .white
	 var backgroundColor: Color = .accentColor

	 func makeBody(configuration: Configuration) -> some View {
			configuration.label
				 .font(.headline.bold())
				 .foregroundColor(foregroundColor)
				 .frame(maxWidth: .infinity)
				 .padding()
				 .background(
						RoundedRectangle(cornerRadius: cornerRadius)
							 .fill(backgroundColor)
				 )
				 .scaleEffect(configuration.isPressed ? 0.98 : 1.0)
				 .opacity(configuration.isPressed ? 0.9 : 1.0)
				 .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
	 }
}
