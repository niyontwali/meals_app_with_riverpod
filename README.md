# Meals App Readme (Riverpod Version)

## 1. Introduction

The Meals app, developed in Flutter, empowers users to explore meal categories, access detailed meal information, view ingredients, and mark their favorite meals. This readme provides insights into the project setup and highlights the use of Riverpod, a state management library, to enhance the app's performance and maintain state.

## 2. Project Setup

To run the Meals app with Riverpod locally:

**Clone the Repository:**
```bash
git clone https://github.com/niyontwali/meals_app_with_riverpod.git
```

**Install Dependencies:**
```bash
cd meals_app_with_riverpod
flutter pub get
```

**Run the App:**
```bash
flutter run
```

## 3. Key Riverpod Concepts and Classes

This readme provides an introduction to the Meals app with Riverpod, highlighting key Riverpod concepts and classes used in the project. Dive into the code to see how Riverpod enhances state management and boosts the performance of the meal exploration app. For those interested in comparing state management approaches, the local state version of the app is available in a separate repository.

### 1. Provider()
- **Explanation:** `Provider()` is used to create a provider that holds a piece of data.
- **Example:**
   ```dart
   final categoryProvider = Provider<String>((ref) => 'Italian');
   ```

### 2. ref.watch and ref.read
- **Explanation:** `ref.watch` and `ref.read` are used to read data from providers. `ref.watch` listens for changes and updates the widget, while `ref.read` reads the current state without listening for changes.
- **Example:**
   ```dart
   final category = ref.watch(categoryProvider);
   final currentCategory = ref.read(categoryProvider);
   ```

### 3. ProviderScope()
- **Explanation:** `ProviderScope()` creates a new scope for providers, allowing the providers to be accessed within that scope.
- **Example:**
   ```dart
   void main() {
     runApp(
       ProviderScope(
         child: MyApp(),
       ),
     );
   }
   ```

### 4. StateNotifier
- **Explanation:** `StateNotifier` is a class that can hold and manage mutable state.
- **Example:**
   ```dart
   class CounterNotifier extends StateNotifier<int> {
     CounterNotifier() : super(0);

     void increment() {
       state++;
     }
   }
   ```

### 5. StateNotifierProvider()
- **Explanation:** `StateNotifierProvider()` is used to provide a `StateNotifier` to the widget tree, enabling access to its state.
- **Example:**
   ```dart
   final counterProvider = StateNotifierProvider<CounterNotifier, int>((ref) {
     return CounterNotifier();
   });
   ```

### 6. WidgetRef
- **Explanation:** `WidgetRef` is an object provided by Riverpod that allows widgets to access providers.
- **Example:**
   ```dart
   Consumer(builder: (context, ref, child) {
     final count = ref.watch(counterProvider);
     return Text('$count');
   })
   ```

### 7. Ref => ref.read, ref.watch
- **Explanation:** `Ref` is a parameter provided in Riverpod functions like `Provider()`. It allows you to read and watch providers.
- **Example:**
   ```dart
   final category = Provider<String>((ref) => 'Italian');
   final categoryName = ref.read(category); // Read the current value
   final categoryNameWatch = ref.watch(category); // Watch for changes
   ```

## 4. Explore the Local State Version

If you're interested in exploring the version of the Meals app that uses local state management (not Riverpod), you can check out the repository at [https://github.com/niyontwali/meals_app](https://github.com/niyontwali/meals_app). This repository provides a valuable resource for understanding how state management techniques differ between the two versions of the app.