# Flutter Food Delivery App

## Overview
This is a Flutter-based food delivery application with a modern UI design and essential features for online food ordering. The app allows users to browse food items, add them to cart, place orders, rate their experience, and communicate via chat.

## Project Structure

```
lib/
├── main.dart                  # Entry point of the application
├── splash_screen.dart         # Initial loading screen
├── Data/
│   ├── Models/
│   │   └── item_model.dart    # Model for food items
│   └── Services/
│       └── api_service.dart   # Services for API communication
├── widgets/
│   ├── HeaderApp.dart         # App header component
│   ├── NavigationBarApp.dart  # Bottom navigation bar
│   ├── MealMenu.dart          # Food listing component
│   ├── layout/
│   │   └── CustomDrawer.dart  # Side menu drawer
│   ├── Pages/
│   │   ├── chat.dart          # Chat interface
│   │   ├── finish_order.dart  # Order completion screen
│   │   └── food_detail_order.dart # Food details & ordering
│   └── custom/
│       ├── custom_carousel.dart
│       ├── custom_card_mealMenu.dart
│       └── custom_total_account.dart
```

## Features

### 1. User Interface
- Modern and responsive UI with Material Design
- Custom navigation drawer for app sections
- Bottom navigation bar for quick access to key features
- Splash screen with branded experience

### 2. Food Browsing
- Browse food items by category
- View detailed information including prices, ratings, and descriptions
- Custom carousel for featured items

### 3. Cart & Ordering
- Add items to cart with quantity selection
- View order summary with subtotals
- Apply discounts and calculate delivery fees
- Complete checkout process

### 4. Post-Order Experience
- Order rating system with star ratings
- Feedback submission
- Order history and tracking

### 5. Communication
- In-app chat system for customer support
- Message history display

## Backend Integration
The app uses a mock backend service with API endpoints for:
- Retrieving food items
- Managing cart
- Processing orders
- User authentication

## Setup & Running

### Prerequisites
- Flutter SDK (2.0 or higher)
- Dart SDK
- Android Studio or VS Code with Flutter plugins
- Node.js (for running the mock API)

### Running the Project

1. Clone the repository
```bash
git clone <repository-url>
cd flutter_application_1
```

2. Install Flutter dependencies
```bash
flutter pub get
```

3. Setup mock API (optional)
```bash
cd api
npm install
npm start
```

4. Run the app
```bash
flutter run
```

## Development Notes

- The app uses a service-based architecture for API communication
- State management is handled through Provider pattern
- Mock API uses JSON Server for simulating backend responses
- Custom widgets are modularized for reusability
- Responsive design principles for various screen sizes

## Future Enhancements

- User authentication and profiles
- Payment gateway integration
- Real-time order tracking
- Push notifications
- Address management
- Favorites and personalized recommendations