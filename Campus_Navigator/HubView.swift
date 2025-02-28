import SwiftUI

struct HubView: View {
    var body: some View {
        VStack {
          
            HStack {
                Button(action: {
                    
                }) {
                    Image(systemName: "arrow.left")
                        .font(.title2)
                        .foregroundColor(.black)
                }
                
               // Spacer()
                
                Text("Hub")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.horizontal, 10)
                
                Spacer()
            }
            .padding()

            
            HStack {
                VStack(alignment: .leading) {
                    Text("Ask a Friend")
                        .font(.headline)
                        .bold()
                    
                    Text("Feel Free to ask Questions about University Facilities From Your Uni Pals")
                        .font(.subheadline)
                        .foregroundColor(.black)
                    
                    Button(action: {
                        
                    }) {
                        Text("Create")
                            .font(.subheadline)
                            .foregroundColor(.white)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 8)
                            .background(Color.black)
                            .cornerRadius(25)
                    }
                }
                
                Spacer()
                
                Image("ManHub")
                    .resizable()
                    .frame(width: 100, height: 115)
            }
            .padding()
            .background(Color.yellow.opacity(0.7))
            .cornerRadius(12)
            .padding(.horizontal)

            
            ScrollView {
                VStack(spacing: 16) {
                    PollCardView(question: "Is cafeteria open?", options: ["Yes", "No"], selectedOption: "Yes")
                    PollCardView(question: "Is Library Is Crowded?", options: ["Yes", "No", "Little Bit"], selectedOption: "Little Bit")
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


struct PollCardView: View {
    var question: String
    var options: [String]
    var selectedOption: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(question)
                .font(.headline)
                .bold()
            
            ForEach(options, id: \.self) { option in
                HStack {
                    Text(option)
                    Spacer()
                    
                    if option == selectedOption {
                        Circle()
                            .fill(Color.gray.opacity(0.2))
                            .frame(width: 24, height: 24)
                            .overlay(Text("K").font(.caption).bold())
                    }
                }
                .padding(.vertical, 4)
                
                ProgressView(value: option == selectedOption ? 1.0 : 0.3)
                    .progressViewStyle(LinearProgressViewStyle(tint: option == selectedOption ? Color.yellow : Color.gray.opacity(0.3)))
            }
            
            Text("1 vote")
                .font(.caption)
                .foregroundColor(.gray)
                .padding(.top, 4)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 2)
    }
}


struct TabItem: View {
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

struct HubView_Previews: PreviewProvider {
    static var previews: some View {
        HubView()
    }
}
