# Codelab: Write Your First Flutter App

Sample project to learn basics of Flutter.

## Outcomes
* Use fat arrow notation for one-line functions or methods.
* A widget's main job is to provide a build method that describes how to display the widget in terms of other, lower-level widgets.
* Center widget aligns its widget subtree to the center of the screen.
* To add library we should go pubspec.yaml file. And do the following;
```yaml
dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^0.1.0
  english_words: ^3.1.0  
```
* If a widgets parent is constant, it can be constant. 
* ListView's builder can be used to create list view lazily, on demand.
* To define boolean in Dart: bool isSomething = false;
* In Flutter's reactive style framework, calling setState() triggers a call to the build() method for the State object, resulting in an update to the UI.
* Navigator manages a stack containing the app's routes. Pushing a route onto the Navigator's stack, updates the display to that route. Popping a route from the Navigator's stack, returns the display to the previous route.
* To navigate a screen: Navigator.of(context).push();
* It seems like Dart collections have functional methods like map, toList. 
* Layouts in flutter: https://flutter.dev/docs/development/ui/layout
* Adding interactivity to flutter app: https://flutter.dev/docs/development/ui/interactive
* Introduction to widgets: https://flutter.dev/docs/development/ui/widgets-intro
* Flutter for Android developers: https://flutter.dev/docs/get-started/flutter-for/android-devs
* Flutter for React native developers: https://flutter.dev/docs/get-started/flutter-for/react-native-devs
* Flutter for web developers: https://flutter.dev/docs/get-started/flutter-for/web-devs
* Cookbook: https://flutter.dev/docs/cookbook
* Bootstrap in Dart: https://flutter.dev/docs/resources/bootstrap-into-dart

<p align="middle">
  <img src="/first_flutter_app/screenshots/part1.png" width="150" />
  <img src="/first_flutter_app/screenshots/part2-1.png" width="150" /> 
  <img src="/first_flutter_app/screenshots/part2-2.png" width="150" />
</p>

Components: Center, TextStyle, ListTile, Iterable, MaterialPageRoute