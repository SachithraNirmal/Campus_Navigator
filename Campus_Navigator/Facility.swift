import SwiftUI

struct Facility: Identifiable {
    let id = UUID()
    let name: String
    let hours: String
    let status: String
    let logo: String // Replace with actual image asset if needed
}

struct FacilitiesView: View {
    
    let facilities: [Facility] = [
        Facility(name: "Study Area", hours: "07:00 - 17:00", status: "Open", logo: "facility_logo"),
        Facility(name: "Lab No: 01", hours: "07:00 - 20:00", status: "Open", logo: "facility_logo"),
        Facility(name: "Lab No: 02", hours: "07:00 - 20:00", status: "Closed", logo: "facility_logo"),
        Facility(name: "Cafeteria", hours: "07:00 - 18:00", status: "Closed", logo: "facility_logo"),
        Facility(name: "Book Shop", hours: "09:00 - 17:30", status: "Closed", logo: "facility_logo"),
        Facility(name: "Library", hours: "07:00 - 16:00", status: "Closed", logo: "facility_logo")
    ]
    
    var body: some View {
        VStack {
            
            HStack {
                Button(action: {
                  
                }) {
                    Image(systemName: "arrow.left")
                        .font(.title2)
                        .foregroundColor(.black)
                }
                
                Text("Facilities")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.horizontal, 10)
                
                Spacer()
            }
            .padding()

           
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Empowering Youth to Reduce Food Waste")
                            .font(.headline)
                            .bold()
                        
                        Text("Vending Machine")
                            .font(.subheadline)
                            .foregroundColor(.blue)
                            .bold()
                        
                        Text("🔑 Second Floor")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    Image("veldingmaching")
                        .resizable()
                        .frame(width: 60, height: 100)
                }
            }
            .padding()
            .background(Color.yellow.opacity(0.7))
            .cornerRadius(12)
            .padding(.horizontal)

           
            Text("General Details")
                .font(.title3)
                .bold()
                .padding(.top, 8)
            
            ScrollView {
                VStack(spacing: 12) {
                    ForEach(facilities) { facility in
                        FacilityRow(facility: facility)
                    }
                }
                .padding(.horizontal)
            }
            
            .padding()
            .background(Color.white)
            .shadow(radius: 3)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}


struct FacilityRow: View {
    var facility: Facility

    var body: some View {
        HStack {
            Image("NibmLogo")
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 1))
            
            VStack(alignment: .leading) {
                Text(facility.name)
                    .font(.headline)
                    .bold()
                
                Text("Hours \(facility.hours)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Text(facility.status)
                    .font(.subheadline)
                    .foregroundColor(.red)
                    .bold()
            }
            
            Spacer()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 2)
    }
}


struct CustomTabItem: View {
    var icon: String
    var label: String

    var body: some View {
        VStack {
            Image(systemName: icon)
            Text(label)
                .font(.caption)
        }
        .frame(maxWidth: .infinity)
    }
}

struct FacilitiesView_Previews: PreviewProvider {
    static var previews: some View {
        FacilitiesView()
    }
}
