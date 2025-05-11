import SwiftUI

	 // Model for Tournament
struct Tournament: Identifiable {
	 let id = UUID()
	 let name: String
	 let date: String
	 let location: String
	 let participants: Int
	 let icon: String // Added icon property for different tennis club symbols
}

	 // Sample Data with unique icons
let sampleTournaments = [
	 Tournament(name: "Summer Clash 2025", date: "June 15, 2025", location: "New York, NY", participants: 128, icon: "tennis.racket"),
	 Tournament(name: "Winter Brawl", date: "Dec 10, 2025", location: "Chicago, IL", participants: 64, icon: "figure.tennis"),
	 Tournament(name: "Spring Showdown", date: "April 5, 2025", location: "Los Angeles, CA", participants: 96, icon: "sportscourt"),
	 Tournament(name: "Fall Frenzy", date: "Oct 20, 2025", location: "Miami, FL", participants: 80, icon: "tennisball")
]

	 // Tournament List View
struct tourney: View {
	 @State private var searchText = ""
	 var body: some View {
			NavigationStack {
				 VStack {
						Spacer()
							 //						HStack {
							 //							 Text("Events")
							 //									.font(.system(.largeTitle, weight: .bold))
							 //									.frame(maxWidth: .infinity, alignment: .leading)
							 //									.clipped()
							 //							 Text("Hello, Marisa!")
							 //									.font(.system(.body, weight: .medium))
							 //									.foregroundStyle(.secondary)
							 //						}
							 //						.padding(.horizontal)
							 //						.padding(.top, 20)

						Text("Upcoming:".uppercased())
							 .frame(maxWidth: .infinity, alignment: .leading)
							 .font(.system(.subheadline, weight: .medium).width(.expanded))
							 .foregroundStyle(.purple)
							 .font(.system(.title, weight: .bold))
							 .padding(.horizontal)
							 .padding(.top, 1)

						ScrollView {
							 VStack(spacing: 10) {
									ForEach(sampleTournaments) { tournament in
										 HStack {
												Image(systemName: tournament.icon)
													 .resizable()
													 .scaledToFit()
													 .frame(width: 40, height: 40)
													 .foregroundColor(.yellow)
													 .padding(.trailing, 10)

												VStack(alignment: .leading, spacing: 5) {
													 Text(tournament.name)
															.font(.headline)
															.foregroundColor(.primary)
													 HStack {
															Text(tournament.date)
																 .font(.subheadline)
																 .foregroundColor(.secondary)

															Text(tournament.location)
																 .font(.subheadline)
																 .foregroundColor(.secondary)
													 }

													 Text("\(tournament.participants) Participants")
															.font(.caption)
															.foregroundColor(.purple)
												}
												Spacer()
										 }
										 .padding()
										 .background(Color(.systemGray6))
										 .cornerRadius(10)
										 .padding(.horizontal)
									}
							 }
						}
				 }
				 .searchable(text: $searchText, prompt: "Search Tournaments")
				 .navigationTitle("Events")
			}
	 }
}

	 // Preview
struct TournamentListView_Previews: PreviewProvider {
	 static var previews: some View {
			tourney()
	 }
}
