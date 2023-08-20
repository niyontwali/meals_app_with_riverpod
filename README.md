# Meals App Readme

## 1. Introduction

The Meals app, developed in Flutter, allows users to explore meal categories, access detailed meal information including ingredients, and mark their favorite meals. This readme provides valuable insights into the project setup and introduces key Flutter concepts, classes, and widgets used in the app.

## 2. Project Setup

To run the Meals app locally:

**Clone the Repository:**

```bash
git clone <url>
```

**Install Dependencies:**

```bash
cd meals_app (In case the name of the app cloned in meals_app)
flutter pub get
```

**Run the App:**

```bash
flutter run
```

## 3. Key Flutter Concepts, Classes, and Widgets
This readme provides an introduction to the Meals app and explains essential Flutter concepts, classes, and widgets used in the project, accompanied by examples for clarity. Explore the code to see how these elements work together to create a functional and user-friendly meal exploration app.

#### 1. Scaffold

The `Scaffold` widget provides a basic app structure, including an AppBar and body.

```dart
Scaffold(
  appBar: AppBar(title: Text('Meals')),
  body: // Your content here
)
```

#### 2. AppBar

The `AppBar` widget represents the app bar with a title.

```dart
AppBar(title: Text('Meals'))
```

#### 3. GridView

`GridView` displays a scrollable grid of widgets.

```dart
GridView.builder(
  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
    maxCrossAxisExtent: 200,
  ),
  itemBuilder: // Your item builder function here
)
```

#### 4. Text

The `Text` widget displays text on the screen.

```dart
Text('Category Name')
```

#### 5. gridDelegate in GridView

`gridDelegate` in `GridView` defines the grid's layout, such as the maximum cross-axis extent.

```dart
gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
  maxCrossAxisExtent: 200,
)
```

#### 6. Container

`Container` is a styled box for containing other widgets.

```dart
Container(
  decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: [Color1, Color2],
    ),
    borderRadius: BorderRadius.circular(15),
  ),
  child: // Your child widget here
)
```

#### 7. BoxDecoration

`BoxDecoration` defines the decoration for a `Container`.

```dart
BoxDecoration(
  gradient: LinearGradient(
    colors: [Color1, Color2],
  ),
  borderRadius: BorderRadius.circular(15),
)
```

#### 8. LinearGradient

`LinearGradient` creates a linear gradient for background decoration.

```dart
LinearGradient(
  colors: [Color1, Color2],
)
```

#### 9. BorderRadius

`BorderRadius` specifies rounded corners for a widget.

```dart
BorderRadius.circular(15)
```

#### 10. Theme

`Theme` defines the app's visual style, such as colors and text styles.

```dart
Theme(
  data: Theme.of(context).copyWith(
    primaryColor: kPrimaryColor,
  ),
  child: // Your themed widget here
)
```

#### 11. Theme.of(context)

`Theme.of(context)` retrieves the theme data from the nearest `Theme` widget ancestor.

```dart
Theme.of(context)
```

#### 12. copyWith

`copyWith` creates a copy of a theme with specified changes.

```dart
Theme.of(context).copyWith(primaryColor: kPrimaryColor)
```

#### 13. Alignment

`Alignment` specifies a point within a container where a widget should be placed.

```dart
Alignment.center
```

#### 14. InkWell and GestureDetector (the difference)

Both widgets handle touch gestures, but `InkWell` adds a visual ink splash effect.

- **Example - InkWell:**

  ```dart
  InkWell(
    onTap: () {
      // Handle tap
    },
    child: // Your child widget here
  )
  ```

- **Example - GestureDetector:**
  ```dart
  GestureDetector(
    onTap: () {
      // Handle tap
    },
    child: // Your child widget here
  )
  ```

#### 15. ListView and its builder

`ListView` displays a scrollable list of widgets, and the builder generates list items on demand.

```dart
ListView.builder(
  itemBuilder: // Your item builder function here
)
```

#### 16. Tooltip

`Tooltip` displays a tooltip when a widget is long-pressed.

```dart
Tooltip(
  message: 'This is a tooltip',
  child: // Your child widget here
)
```

#### 17. Image => Image.network

`Image.network` loads an image from a network URL.

```dart
Image.network('https://example.com/image.jpg')
```

#### 18. BoxFit => BoxFit.cover

`BoxFit.cover` scales an image to cover its container, maintaining aspect ratio.

```dart
BoxFit.cover
```

#### 19. SizedBox

`SizedBox` creates a box with specified dimensions.

```dart
SizedBox(width: 20, height: 20)
```

#### 20. Padding

`Padding` adds space around a widget.

```dart
Padding(
  padding: EdgeInsets.all(16.0),
  child: // Your child widget here
)
```

#### 21. TextAlign

`TextAlign` specifies text alignment within a container.

```dart
TextAlign.center
```

#### 22. SingleChildScrollView

`SingleChildScrollView` creates a scrollable widget with a single child.

```dart
SingleChildScrollView(
  child: // Your content here
)
```

#### 23. Center

`Center` centers its child within itself.

```dart
Center(child: Text('Centered Text'))
```

#### 24. BottomNavigationBar

`BottomNavigationBar` creates a navigation bar at the bottom of the screen.

```dart
BottomNavigationBar(
  items: // Your navigation items here
)
```

#### 25. BottomNavigationBarItem

`BottomNavigationBarItem` represents an item within the `BottomNavigationBar`.

```dart
BottomNavigationBarItem(
icon: Icon(Icons.home),
  label: 'Home',
)
```

#### 26. bottomNavigationBar

`bottomNavigationBar` is used to place a `BottomNavigationBar` in a `Scaffold`.

```dart
bottomNavigationBar: BottomNavigationBar(
  items: // Your navigation items here
)
```

#### 27. Icon

The `Icon` widget displays icons.

```dart
Icon(Icons.favorite)
```

#### 28. Icons

`Icons` provides a collection of pre-defined icons.

```dart
Icons.favorite
```

#### 29. Alignment

`Alignment` specifies a point within a container where a widget should be placed.

```dart
Alignment.center
```

#### 30. EdgeInsets

`EdgeInsets` defines padding for a widget.

```dart
EdgeInsets.all(16.0)
```

#### 31. Positioned

`Positioned` positions a widget at a specific location in a `Stack`.

```dart
Positioned(
  top: 10,
  left: 10,
  child: // Your positioned widget here
)
```

#### 32. Stack

`Stack` stacks children widgets on top of each other.

```dart
Stack(
  children: // Your stacked widgets here
)
```

#### 33. FadeInImage

`FadeInImage` smoothly loads images with a fading effect.

```dart
FadeInImage(
  placeholder: AssetImage('assets/placeholder.png'),
  image: NetworkImage('https://example.com/image.jpg'),
)
```

#### 34. RoundedRectangleBorder

`RoundedRectangleBorder` defines a rectangular border with rounded corners.

```dart
RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(10),
)
```

#### 35. MaterialApp

`MaterialApp` configures the overall structure of the app.

```dart
MaterialApp(
  home: // Your home screen widget here
)
```

#### 36. MaterialPageRoute

`MaterialPageRoute` defines the route for navigating to a screen.

```dart
MaterialPageRoute(
  builder: (context) => // Your destination screen widget here
)
```

#### 37. SnackBar

`SnackBar` shows brief messages at the screen's bottom with optional actions.

```dart
ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(
    content: Text('This is a snack bar message'),
    action: // Your action here
  ),
)
```

#### 38. SwitchListTile

`SwitchListTile` is a ListTile with a switch.

```dart
SwitchListTile(
  title: Text('Enable Feature'),
  value: _isEnabled,
  onChanged: (value) {
    // Handle switch change
  },
)
```

#### 39. ScaffoldMessenger

`ScaffoldMessenger` manages `SnackBar` messages.

```dart
ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(
    content: Text('This is a snack bar message'),
    action: // Your action here
  ),
)
```

#### 40. showSnackBar

`showSnackBar` displays a `SnackBar` in a `Scaffold`.

```dart
ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(
    content: Text('This is a snack bar message'),
    action: // Your action here
  ),
)
```

#### 41. Drawer

`Drawer` creates a navigation drawer.

```dart
Drawer(
  child: // Your drawer content here
)
```

#### 42. DrawerHeader

`DrawerHeader` represents the header in a navigation drawer.

```dart
DrawerHeader(
  // Your header content here
)
```

#### 43. ListTile

`ListTile` creates a list item.

```dart
ListTile(
  title: Text('Item 1'),
  onTap: () {
    // Handle item tap
  },
)
```

#### 44. SwitchListTile

`SwitchListTile` is a `ListTile` with a switch.

```dart
SwitchListTile(
  title: Text('Enable Feature'),
  value: _isEnabled,
  onChanged: (value) {
    // Handle switch change
  },
)
```

#### 45. Generic Types (keyword)

Generic types specify the type of data a variable can hold.

```dart
List<String> categories = ['Italian', 'Mexican', 'Thai'];
```

#### 46. WillPopScope => onWillPop function

`WillPopScope` manages the behavior of the Android back button press.

```dart
WillPopScope(
  onWillPop: () async {
    // Handle back button press
    return true; // Allow back navigation
  },
  // Widget content here
)
```

#### 47. Naming with a 'k' at the Beginning to Name Global Variables

A convention to name global variables with a 'k' at the beginning to indicate their global scope.

```dart
static const kPrimaryColor = Color(0xFF42A5F5);
```

#### 48. initState()

`initState` initializes state in `StatefulWidget`, often used for setup tasks.

```dart
@override
void initState() {
  super.initState();
  // Initialization code here
}
```
