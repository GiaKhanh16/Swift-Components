import SwiftUI

struct ProfileStatsView: View {
	 var body: some View {
			HStack(spacing: 20) {
						// Matches Section
				 StatItem(icon: "circle.fill", value: "3K+", label: "matches", iconColor: .green)

				 Divider()
						.frame(width: 1)
						.background(Color.gray)

						// Score Section
				 StatItem(icon: "star.fill", value: "4320", label: "score", iconColor: .yellow)

				 Divider()
						.frame(width: 1)
						.background(Color.gray)

						// Friends Section
				 StatItem(icon: "person.2.fill", value: "460", label: "friends", iconColor: .blue)
			}
			.padding()
			.background(Color.black)
			.cornerRadius(10)
	 }
}

struct StatItem: View {
	 let icon: String
	 let value: String
	 let label: String
	 let iconColor: Color

	 var body: some View {
			VStack {
				 HStack {
						Image(systemName: icon)
							 .foregroundColor(iconColor)
						Text(value)
							 .foregroundColor(.white)
							 .font(.headline)
				 }
				 Text(label)
						.foregroundColor(.gray)
						.font(.caption)
			}
	 }
}

#Preview {
	 ProfileStatsView()
}
