import SwiftUI

struct LeaderboardView: View {
    var topContributors: [(rank: Int, name: String, points: Int)] = [
        (1, "Kavindu", 1800),
        (2, "Sachithra", 1700),
        (3, "Maneesha", 1500)
    ]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // Header
                HStack {
                    Button(action: {
                        // Action for back navigation
                    }) {
                        Image(systemName: "arrow.left")
                            .font(.title2)
                            .foregroundColor(.black)
                    }
                    
                    Spacer()
                    
                    Text("Leaderboard")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                .padding()
                
          
                VStack(alignment: .leading, spacing: 10) {
                    Text("Daily check-in Progress")
                        .font(.headline)
                        .foregroundColor(.white)
                    
                    Text("You will get extra points on the seventh check-in each week.")
                        .font(.subheadline)
                        .foregroundColor(.white.opacity(0.8))
                    
                    HStack {
                        ForEach(1...6, id: \.self) { day in
                            VStack {
                                Text("+50")
                                    .font(.caption)
                                    .foregroundColor(.white)
                                    .padding(5)
                                    .background(Color.white.opacity(0.3))
                                    .cornerRadius(5)
                                
                                Text("Day \(day)")
                                    .font(.caption2)
                                    .foregroundColor(.white)
                            }
                            .padding(5)
                        }
                    }
                    
                    Text("You’ve checked in today 🎉")
                        .font(.footnote)
                        .foregroundColor(.white)
                        .padding(.top, 5)
                    
                    
                }
                .padding()
                .background(Color.orange)
                .cornerRadius(15)
                .padding(.horizontal)
                
                
                VStack(alignment: .leading) {
                    Text("🏆 Champion")
                        .font(.headline)
                        .fontWeight(.bold)
                    
                    Text("1,200 Points")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    HStack {
                        Text("Become a Champion")
                            .font(.subheadline)
                            .foregroundColor(.black)
                        Spacer()
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }
                    
                    ProgressView(value: 0.6)
                        .progressViewStyle(LinearProgressViewStyle(tint: Color.purple))
                        .frame(height: 4)
                }
                .padding()
                .background(Color.white)
                .cornerRadius(15)
                .shadow(radius: 5)
                .padding(.horizontal)
                
                // Top Contributors List
                VStack(alignment: .center) {
                    Text("Top Contributors")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    ForEach(topContributors, id: \.rank) { contributor in
                        HStack {
                            Text("\(contributor.rank)")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(contributor.rank == 1 ? .yellow : .black)
                            
                            Text(contributor.name)
                                .font(.title3)
                                .fontWeight(.bold)
                            
                            Spacer()
                            
                            Text("\(contributor.points) Points")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        .padding()
                        .background(contributor.rank == 1 ? Color.yellow.opacity(0.5) : Color.gray.opacity(0.2))
                        .cornerRadius(50)
                    }
                }
                .padding(.horizontal)
            }
        }
        .navigationBarHidden(true)
    }
}

struct LeaderboardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderboardView()
    }
}
