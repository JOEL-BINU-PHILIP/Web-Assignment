# Flutter Web Dashboard

A Flutter web application dashboard with responsive layout and horizontally scrollable feature cards.

## Features

- Responsive layout for mobile, tablet, and desktop views
- Horizontally scrollable feature cards
- Step-by-step guide on how it works

## Prerequisites

- [Flutter](https://flutter.dev/docs/get-started/install) (v2.0.0 or later)
- [Dart](https://dart.dev/get-dart)

## Setup

1. Clone the repository:

    ```sh
    git clone https://github.com/your-username/flutter-web-dashboard.git
    cd flutter-web-dashboard
    ```

2. Install the dependencies:

    ```sh
    flutter pub get
    ```

3. Run the application:

    ```sh
    flutter run -d chrome
    ```


## Project Structure


flutter-web-dashboard/
├── lib/
│   ├── ui/
│   │   ├── components/
│   │   │   ├── feature_card.dart
│   │   │   ├── how_it_works_step.dart
│   │   │   ├── step_number.dart
│   │   └── home_page.dart
│   ├── utils/
│   │   └── responsive_layout.dart
│   ├── main.dart
├── assets/
│   ├── feature1.png
│   ├── feature2.png
│   ├── feature3.png
├── pubspec.yaml

## Project Structure

### lib/
#### ui/
Contains UI-related files.

#### components/
Contains reusable UI components.
- **feature_card.dart**: Defines the feature card widget used to display various features.
- **how_it_works_step.dart**: Represents the steps in the "How It Works" section.
- **step_number.dart**: Displays the step number in the "How It Works" section.
- **home_page.dart**: The main page of the dashboard.

#### utils/
Contains utility classes and functions.
- **responsive_layout.dart**: Provides utilities to handle responsive layout for different screen sizes.

#### main.dart
The entry point of the application.

### assets/
Contains image assets used in the project:
- **feature1.png**
- **feature2.png**
- **feature3.png**

### pubspec.yaml
Defines the dependencies and assets for the project.

 
 
