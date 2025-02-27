import SwiftUI

struct SignUpView: View {
    @State private var fullName = ""
    @State private var index = ""
    @State private var batchName = ""
    @State private var email = ""
    @State private var password = ""
    @State private var agreedToTerms = false

    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("Sign up")
                .font(.largeTitle)
                .fontWeight(.bold)

            CustomTextField(title: "Full Name", placeholder: "Enter your full name", text: $fullName)
            CustomTextField(title: "Index", placeholder: "Enter your Index", text: $index)
            CustomTextField(title: "Batch name", placeholder: "Enter your Batch", text: $batchName)
            CustomTextField(title: "Email", placeholder: "Enter your Email", text: $email)
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Password")
                    .font(.footnote)
                    .foregroundColor(.gray)
                SecureField("Select a password", text: $password)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
            }

           
            HStack {
                Button(action: { agreedToTerms.toggle() }) {
                    Image(systemName: agreedToTerms ? "checkmark.circle.fill" : "circle")
                        .foregroundColor(agreedToTerms ? .black : .gray)
                        .font(.title3)
                }
                
                Text("By creating an account or signing in, you agree to our")
                    .font(.footnote)
                
                Text("Terms and Conditions")
                    .font(.footnote)
                    .fontWeight(.bold)
                    .underline()
            }
            .padding(.top)

            
            Button(action: {
                handleSignUp()
            }) {
                Text("Submit")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.yellow)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    .fontWeight(.bold)
            }
            .padding(.top, 10)
            
            Spacer()
        }
        .padding()
    }
    
    func handleSignUp() {
        // Handle Sign-Up Logic Here
        print("Sign-Up Button Pressed")
    }
}

// Custom TextField Component
struct CustomTextField: View {
    var title: String
    var placeholder: String
    @Binding var text: String

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title)
                .font(.footnote)
                .foregroundColor(.gray)
            TextField(placeholder, text: $text)
                .padding()
                .background(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
        }
    }
}

// Preview
struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
