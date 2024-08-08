# Flutter Signup Page with Firebase and GetX

This project is a Flutter application demonstrating a signup page using Firebase for authentication and GetX for state management and validation. The application includes email and password validation to ensure secure and reliable user registration.

## Features

- **Firebase Authentication:** Secure user registration with Firebase.
- **Email and Password Validation:** Validates user input to ensure a strong password and valid email address.
- **State Management with GetX:** Manages state and dependencies effectively with the GetX package.

 ## Photo
   <table align="center">
    <tr>
    <td><img src="https://github.com/user-attachments/assets/ef9b744b-e26d-4d41-b128-25aef2abc966" alt="Image 2" width="300" height="auto"></td>
     <td><video src ="https://github.com/user-attachments/assets/babc47b6-b2ed-4d4c-aeaa-7b52fce85159"></video></td>
    </tr>
   
  </table>  
  <table>
    <tr>
      <td><img src="https://github.com/user-attachments/assets/120503af-7893-4878-9597-86f17678ab37" alt="Image 2" width="auto" height="auto"></td>
    </tr>
  </table>

## Getting Started

### Prerequisites

- Flutter SDK installed
- Firebase account
- An IDE like VSCode or Android Studio

### Setup Instructions

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/your-username/your-repository.git
   cd your-repository
   ```

2. **Install Dependencies:**

   ```bash
   flutter pub get
   ```

3. **Configure Firebase:**

   - Go to the [Firebase Console](https://console.firebase.google.com/) and create a new project.
   - Add your app to the Firebase project and download the `google-services.json` file (for Android) or `GoogleService-Info.plist` (for iOS).
   - Place the `google-services.json` file in `android/app` or `GoogleService-Info.plist` in `ios/Runner` directory.

4. **Run the Application:**

   ```bash
   flutter run
   ```

## Usage

- Open the application.
- Navigate to the signup page.
- Enter a valid email address and password.
- Click on the signup button to register.

## Code Structure

- **`lib/main.dart`**: Entry point of the application.
- **`lib/screens/signup_screen.dart`**: Contains the signup page UI and logic.
- **`lib/controllers/auth_controller.dart`**: Handles authentication logic and validation with GetX.

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -am 'Add some feature'`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Create a new Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- [Firebase](https://firebase.google.com/) for authentication services.
- [GetX](https://pub.dev/packages/get) for state management and dependency injection.
