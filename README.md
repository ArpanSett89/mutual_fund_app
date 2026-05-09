# Mutual Fund App

A Flutter-based mobile application that allows users to browse mutual fund schemes, search through available schemes, view detailed NAV history, and simulate investments.

This application was developed as part of a technical assignment for a Mobile App Developer role.

---

## Features

### Authentication
- Secure login flow
- Token storage using `flutter_secure_storage`

### Scheme Listing
- Fetch and display mutual fund schemes from API
- Display scheme name and scheme code
- Search schemes by name
- Loading indicator during API calls
- Error handling for failed requests
- Empty state handling

### Scheme Details
- View detailed scheme information
- Display NAV history in a scrollable list
- Date-wise NAV records
- Investment simulation via bottom sheet

### Investment Flow
- Enter investment amount
- Numeric input only
- Minimum investment validation (₹100)
- Confirmation flow with success feedback

---

## Tech Stack

- **Flutter**
- **Dart**
- **Bloc (flutter_bloc)**
- **Freezed**
- **json_serializable**
- **Dio**
- **flutter_secure_storage**
- **Auto Route**

---

## Project Architecture

This project follows **Clean Architecture** principles with clear separation of concerns.

```text
lib/
├── application/
│   ├── auth/
│   ├── scheme/
│   └── scheme_details/
│
├── domain/
│   ├── auth/
│   ├── scheme/
│   ├── scheme_details/
│   └── core/
│
├── infrastructure/
│   ├── auth/
│   ├── scheme/
│   ├── scheme_details/
│   └── core/
│
├── presentation/
│   ├── auth/
│   ├── scheme/
│   ├── scheme_details/
│   └── theme/
│
└── config.dart
```

Architecture layers:

- **Presentation Layer** → UI, widgets, pages
- **Application Layer** → Bloc state management
- **Domain Layer** → Entities, repositories, business logic
- **Infrastructure Layer** → API integration, DTOs, datasource implementations

---

## Prerequisites

Before running the project, install:

- Flutter SDK
- Dart SDK
- Android Studio / VS Code
- Android SDK
- Emulator or Android device

Check setup:

```bash
flutter doctor
```

Resolve any reported issues.

---

## Installation

Clone the repository:

```bash
git clone <repository_url>
```

Navigate to project:

```bash
cd mutual_fund_app
```

Install dependencies:

```bash
flutter pub get
```

---

## Generate Code

This project uses code generation (`freezed`, `json_serializable`, routing).

Run:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

---

## Running the App (Android)

### Start Emulator
Using Android Studio:

- Open **Device Manager**
- Start an emulator

Or connect a physical Android device with USB debugging enabled.

Check devices:

```bash
flutter devices
```

---

### Run the project

```bash
flutter run
```

If multiple devices are connected:

```bash
flutter run -d <device_id>
```

Example:

```bash
flutter run -d emulator-5554
```

---

## API Configuration

Update API configuration in:

```dart
config.dart
```

Set:

- Base URL
- API endpoints
- Timeout configurations

Example:

```dart
String baseUrl = 'https://your-api-url.com';
```

---

## Performance Considerations

The provided mutual fund schemes API returns approximately **13,000+ records** in a single response without pagination or server-side filtering.

This creates practical challenges such as:

- Large payload download time
- Increased JSON parsing overhead
- Higher memory consumption
- Potential UI lag during filtering
- Slower first-load experience

To maintain a stable user experience, the following optimizations were implemented:

- **Lazy list rendering** using `ListView.builder`
- **Client-side search filtering**
- **Debounced search input**
- **Loading state handling**
- **Error state handling**
- **Empty state handling**
- **Timeout handling for slow API responses**
- **Defensive API parsing**

---

## Production Recommendation

For a production-scale implementation, backend improvements would ideally include:

- Server-side pagination
- Server-side search APIs
- Incremental loading
- Cached responses
- Optimized API payload structure

These changes would significantly improve scalability and performance.

---

## Known Assumptions

- Authentication is mocked / assignment-level implementation
- Investment flow is simulation only
- No actual payment integration
- Minimum investment amount is ₹100
- Search is client-side

---

## Future Improvements

Potential enhancements:

- Scheme favorites / watchlist
- Investment history
- Portfolio dashboard
- Charts for NAV performance
- Pull-to-refresh
- Offline caching
- Biometric authentication
- Dark mode support

---

## Author

Developed by **Arpan Sett**