import SwiftUI
struct ImageCard: View {
	 var body: some View {
			VStack(alignment: .leading, spacing: 16.0) {
				 Image ("camp")
						.resizable ()
						.frame(width: 240, height: 200)
				 cardText.padding(.horizontal, 8)
			}
			.background (Color.white)
			.clipShape (RoundedRectangle(cornerRadius: 24.0))
			.shadow(radius: 8)
	 }
	 var cardText: some View {
			VStack(alignment: .leading) {
				 Text ("Morning Workout")
						.font(.headline)
				 HStack(spacing: 4.0) {
						Image (systemName: "clock.arrow.trianglehead.2.counterclockwise.rotate.90")
						Text ("10 min" )
				 }.foregroundColor(.gray)
						.padding(.bottom, 16)
			}
	 }
}

#Preview {
	 ImageCard()
}
