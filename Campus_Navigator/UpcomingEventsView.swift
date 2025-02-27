import SwiftUI

struct UpcomingEventsView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                
                HStack {
                    Button(action: {
                        
                    }) {
                        Image(systemName: "arrow.left")
                            .font(.title)
                            .foregroundColor(.black)
                    }
                    Spacer()
                    Text("Upcoming Events")
                        .font(.title2)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding()
                
                
                HStack {
                    Spacer()
                    Button(action: {
                        // Create Event Action
                    }) {
                        HStack {
                            Image(systemName: "plus.circle.fill")
                            Text("Create Event")
                        }
                        .padding()
                        .background(Color.yellow)
                        .foregroundColor(.black)
                        .cornerRadius(8)
                    }
                    .padding(.trailing)
                }
            
                VStack(alignment: .leading) {
                    Image("swimming")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(8)
                    
                    Text("The “AquaClash” Swimming Championship held at Ananda College on March 2025")
                        .font(.headline)
                        .padding(.top, 5)
                    
                    Text("Participating Universities: APIIT, NSBM, ICBT, SLIIT")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    HStack {
                        Image(systemName: "person.circle.fill")
                            .foregroundColor(.gray)
                        Text("M.T. Perera")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Spacer()
                        Image(systemName: "clock")
                            .foregroundColor(.gray)
                        Text("4h ago")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    .padding(.top, 5)
                }
                .padding()
                
                Spacer()
                
                
                HStack {
                    BottomNavItem(icon: "house.fill", label: "Home", isActive: true)
                    BottomNavItem(icon: "paperplane", label: "Map")
                    BottomNavItem(icon: "bubble.left", label: "Hub")
                    BottomNavItem(icon: "heart", label: "Explore")
                    BottomNavItem(icon: "fork.knife", label: "Cafeteria")
                }
                .padding()
                .background(Color.white.shadow(radius: 2))
            }
        }
    }
}


struct BottomNavItem: View {
    let icon: String
    let label: String
    var isActive: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: icon)
                .font(.title3)
                .foregroundColor(isActive ? .black : .gray)
            Text(label)
                .font(.caption)
                .foregroundColor(isActive ? .black : .gray)
        }
        .padding()
    }
}

struct UpcomingEventsView_Previews: PreviewProvider {
    static var previews: some View {
        UpcomingEventsView()
    }
}
