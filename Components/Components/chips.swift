import SwiftUI

struct chips: View {
	 var body: some View {
			VStack(spacing: 14) {
				 Text("❤️")
						.font(.system(size: 56, weight: .regular, design: .default))
				 HStack {
						Spacer()
						Text("Welcome")
							 .font(.system(size: 31, weight: .medium, design: .default))
							 .padding(.bottom, 0)
							 .padding(.top, 0)
							 .foregroundStyle(.black)
						Spacer()
				 }
				 Text("Start by letting us know if the groups you want to be apart of.￼")
						.padding(.bottom, 60)
						.font(.system(size: 17, weight: .regular, design: .default))
						.multilineTextAlignment(.center)
						.foregroundStyle(.black.opacity(0.5))
						.padding(.horizontal, 30)
						.lineSpacing(3)
				 ForEach(0..<2) { _ in // Replace with your data model here
						HStack(spacing: 10) {
									Text("🥘 Easy Prep")
										 .font(.system(size: 16, weight: .medium, design: .default))
										 .padding(.vertical, 9)
										 .padding(.horizontal, 14)
										 .background(Color(.tertiarySystemFill))
										 .mask { RoundedRectangle(cornerRadius: 17, style: .continuous) }
										 .shadow(color: Color(.displayP3, red: 0/255, green: 0/255, blue: 0/255).opacity(0.06), radius: 8, x: 0, y: 4)
						}
				 }
				 Text("Okay, got it!")
						.font(.system(.title3, weight: .medium))
						.foregroundStyle(.blue)
						.mask { RoundedRectangle(cornerRadius: 28, style: .continuous) }
						.padding(.top, 77)
				 Text("Remind me later￼")
						.font(.footnote)
						.foregroundStyle(.secondary)
						.padding(.top)
			}
			.frame(maxWidth: .infinity, maxHeight: .infinity)
			.clipped()
	 }
}
#Preview {
	 chips()
}
