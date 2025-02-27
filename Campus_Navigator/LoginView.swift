import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        NavigationView {
        VStack(spacing: 20) {
         
            Text("Welcome !")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top, 40)

            
            VStack(alignment: .leading, spacing: 5) {
                Text("Email")
                    .font(.caption)
                TextField("Enter your email", text: $email)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
            }
            .padding(.horizontal)

           
            VStack(alignment: .leading, spacing: 5) {
                Text("Password")
                    .font(.caption)
                HStack {
                    SecureField("********", text: $password)
                    Image(systemName: "eye.slash") // Eye icon for visibility toggle
                        .foregroundColor(.gray)
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
            }
            .padding(.horizontal)

            
            HStack {
                Spacer()
                Button(action: {}) {
                    Text("Forgot Password?")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            .padding(.horizontal)

            
            Button(action: {}) {
                Text("Log In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(10)
            }
            .padding(.horizontal)

           
            HStack {
                Rectangle().frame(height: 1).foregroundColor(.gray)
                Text("Or")
                    .font(.caption)
                    .foregroundColor(.gray)
                Rectangle().frame(height: 1).foregroundColor(.gray)
            }
            .padding(.horizontal)

            
            VStack(spacing: 10) {
                SocialLoginButton(icon: "applelogo", text: "Continue with Apple")
                SocialLoginButton(icon: "google_logo", text: "Continue with Google")
                SocialLoginButton(icon: "facebook", text: "Continue with Facebook")
            }

    
            
                        VStack {
                            Spacer()

                            HStack {
                                Text("Don’t have an account?")
                                    .foregroundColor(.gray)

                                NavigationLink(destination: SignUpView()) {
                                    Text("Sign up")
                                        .fontWeight(.bold)
                                        .foregroundColor(.blue)
                                }
                            }
                            .padding(.bottom, 10)
                        }
                        
                    }

            Spacer()
        }
        .padding()
    }
}


struct SocialLoginButton: View {
    let icon: String
    let text: String

    var body: some View {
        Button(action: {}) {
            HStack {
                Image(systemName: icon)
                Text(text)
            }
            .foregroundColor(.black)
            .frame(maxWidth: .infinity)
            .padding()
            .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
        }
        .padding(.horizontal)
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
