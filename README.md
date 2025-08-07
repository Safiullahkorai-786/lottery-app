# Lottery App

A simple Flutter-based mobile application that generates random numbers for a lottery game. The app displays a lucky number, allows users to generate a new number, and tracks wins, losses, and total attempts. The UI provides visual feedback with green for wins and red for losses.

## Features
- Generates a random number and compares it with a lucky number.
- Tracks and displays the number of wins, losses, and total attempts.
- Visual feedback with color-coded UI (green for wins, red for losses).
- Simple and intuitive interface with a floating action button to generate new numbers.

## Screenshots
### It's how it will look on web
<p align="center">
  <img src="https://github.com/user-attachments/assets/a77e6e5b-ad60-47bf-9ea3-59da348bae67" width="30%" />
  <img src="https://github.com/user-attachments/assets/c32fce05-04ca-486a-9ae9-66278579ba26" width="30%" />
  <img src="https://github.com/user-attachments/assets/48ec5fca-e1eb-4bd8-8c84-b6dbe75a08b5" width="30%" />
</p>

### And it's how you can see the app on your mobile
<p align="center">
  <img src="https://github.com/user-attachments/assets/31c904da-af50-444f-9eec-582e8964313d" width="22%" />
  <img src="https://github.com/user-attachments/assets/91c45a81-9654-4315-8834-6471ddefa0b1" width="22%" />
  <img src="https://github.com/user-attachments/assets/19a95eb8-a5e2-4b07-972e-cd76b47c2da6" width="22%" />
  <img src="https://github.com/user-attachments/assets/99cbcc19-5a8f-4136-bf14-9a6681abe745" width="22%" />
</p>

## Prerequisites
To run this project, ensure you have the following installed:
- [Flutter SDK](https://flutter.dev/docs/get-started/install) (version 3.0.0 or higher)
- [Dart SDK](https://dart.dev/get-dart) (included with Flutter)
- An IDE like [Visual Studio Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio)
- A configured emulator or physical device for testing

## Installation
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-username/lottery-app.git
   cd lottery-app
   ```

2. **Install Dependencies**:
   Run the following command to fetch the required Flutter packages:
   ```bash
   flutter pub get
   ```

3. **Run the App**:
   Connect a device or start an emulator, then run:
   ```bash
   flutter run
   ```

## Usage
1. Launch the app on your device or emulator.
2. The app displays a lucky number (default: 6) and a generated number (initially 0).
3. Press the floating action button to generate a new number:
   - If the generated number matches the lucky number, the UI turns green, and a win is recorded.
   - If the numbers don't match, the UI turns red, and a loss is recorded.
4. The app tracks and displays the total number of attempts, wins, and losses.

## Project Structure
```
lottery-app/
├── lib/
│   ├── main.dart              # Entry point of the Flutter app
│   ├── lottery_app.dart       # Main app widget and logic
├── pubspec.yaml              # Flutter dependencies and configuration
├── README.md                 # Project documentation
```

## Dependencies
The app uses the following dependencies (defined in `pubspec.yaml`):
- `flutter`: For the core Flutter framework.
- `material`: For Material Design components.

## Contributing
Contributions are welcome! Please follow these steps:
1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Make your changes and commit (`git commit -m "Add your feature"`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Open a pull request.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact
For questions or feedback, feel free to reach out at [safiullahkorai600@gmail.com](mailto:safiullahkorai600@gmail.com) or open an issue on GitHub.
