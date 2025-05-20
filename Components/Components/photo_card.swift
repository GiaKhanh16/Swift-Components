import SwiftUI

	 // Model for an item
struct Item: Identifiable {
	 let id = UUID()
	 let name: String
	 let imageName: String // Using SF Symbols for placeholders
	 let associatedItem: String
	 let distance: String
	 let multiplier: Int
}

	 // Main View
struct ItemGridView: View {
			// Sample data
	 let items = [
			Item(name: "Lamp", imageName: "lightbulb", associatedItem: "Set of dishes", distance: "2 miles from you", multiplier: 4),
			Item(name: "Camp tent", imageName: "tent", associatedItem: "Coffee Maker", distance: "1 mile from you", multiplier: 2),
			Item(name: "The plant", imageName: "leaf", associatedItem: "Sneakers", distance: "2 miles from you", multiplier: 4),
			Item(name: "The plant", imageName: "leaf", associatedItem: "Coffee Maker", distance: "1 mile from you", multiplier: 4)
	 ]

			// Define the grid layout
	 let columns = [
			GridItem(.flexible(), spacing: 16),
			GridItem(.flexible(), spacing: 16)
	 ]

	 var body: some View {
			NavigationView {
				 ScrollView {
						LazyVGrid(columns: columns, spacing: 16) {
							 ForEach(items) { item in
									ItemCardView(item: item)
							 }
						}
						.padding()
				 }
				 .navigationTitle("Items")
				 .background(Color(.systemGroupedBackground))
			}
	 }
}

	 // View for each item card
struct ItemCardView: View {
	 let item: Item

	 var body: some View {
			VStack(alignment: .leading, spacing: 8) {
						// Image with overlay button
						Image(.camp)
							 .resizable()
							 .scaledToFill()
							 .frame(width: .infinity, height: 120)
							 .cornerRadius(10)

				 VStack(alignment: .leading, spacing: 8) {
							 // Item name
						Text(item.name.uppercased())
							 .font(.caption)
							 .fontWeight(.bold)
							 .foregroundColor(.primary)

							 // Multiplier badge
						Text("x\(item.multiplier)")
							 .font(.caption2)
							 .padding(4)
							 .background(Color.gray.opacity(0.2))
							 .clipShape(Circle())

							 // Associated item
						Text("to \(item.associatedItem)")
							 .font(.caption)
							 .foregroundColor(.secondary)

							 // Distance with icon
						HStack(spacing: 4) {
							 Image(systemName: "location.fill")
									.foregroundColor(.gray)
									.font(.caption)
							 Text(item.distance)
									.font(.caption)
									.foregroundColor(.gray)
						}
				 }
				 .padding()

			}

			.background(Color.white)
			.cornerRadius(10)
			.shadow(radius: 1)
	 }
}

	 // Preview
struct ItemGridView_Previews: PreviewProvider {
	 static var previews: some View {
			ItemGridView()
	 }
}
