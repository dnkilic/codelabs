# Codelab: Material Components (MDC) Basics (Flutter)

Sample project to learn basics of Material Design for Flutter apps.

## Outcomes Part 1
* Material Design is a system for building bold and beautiful digital products. By uniting style, branding, interaction, and motion under a consistent set of principles and components, product teams can realize their greatest design potential.
* We can find Flutter libraries from https://pub.dartlang.org
* StatefulWidgets should override createState() method
* TextField has decoration attribute to set the decoration. It can be InputDecoration
* SizedBox can be used to give space between ListView items
* FlatButton is equivalent of TextButton in material guidelines
* RaisedButton is equivalent of ContainedButton(normal button with text)
* ButtonBar arranges its children in a row which can contain buttons.
* Buttons have onPressed button to take action after button click
* TextEditController can be used to track TextField interactions. It has clear() method to clear the text
* Flutter has navigation. To dismiss view we can use pop. Navigator maintains a stack of routes just like UINavigationController on iOS. https://flutter.dev/docs/cookbook/navigation/navigation-basics
* Navigator.pop(context) will pop the most recent route from Navigator.
* In addition to Flat and Raised button we have OutlineButton, FloatingActionButton, IconButton and more.

<p align="middle">
  <img src="/flutter_material_design/screenshots/101.png" width="150" />
</p>

Components: StatefulWidget, State, Scaffold, SafeArea, ListView, EdgeInsets, SizedBox, Column, ButtonBar, FlatButton, RaisedButton, ButtonTheme, TextEditingController, TextField, Navigator, FloatingActionButton, OutlineButton, IconButton.

## Outcomes Part 2
* Navigation refers to the components, interactions, visual cues, and information architecture that enable users to move through an app. It helps make content and features discoverable, so that tasks are easy to complete.
* You may know the top app bar as a "Navigation Bar" in iOS, or as simply an "App Bar" or "Header."
* Scaffold has appBar attribute which can take AppBar widget as parameter.
* We can set application bar titles with title attribute of AppBar widget.
* Material design is not specific to Android ; https://material.io/design/platform-guidance/cross-platform-adaptation.html#cross-platform-guidelines
* IconButton can be used to create icon buttons which has icon attribute
* AppBar has leading attribute to set IconButton before title. We have trailing attribute as well. 
* semanticLabel attribute can be used to help for accessibility.
* If number of items are not infinite we can use GridView.count() to init our GridView.
* count() method have several attributes like crossAxisCount to set how many item will shown in a row. childAspectRatio to set size of the items. children to init items.
* Column has crossAxisAlignment attribute which can be CrossAxisAlignment.start. Its similar to ConstraintLayout Guidelines.
* AspectRatio widget can be used to set aspect ratio of Images. 
* List.generate() can be used to create list dynamically;  List<Card> cards = List.generate(count, (int index) => Item())
* ThemeData can be used to style our widgets.
* Images has fit attribute to change their scaling(by default its scaleDown). For exxample; fit: BoxFit.fitWidth,

<p align="middle">
  <img src="/flutter_material_design/screenshots/102.png" width="150" />
</p>

Components: Scaffold, AppBar, IconButton, Icon, Semantics, GridView, Card, EdgeInsets, Clip, Column, CrossAxisAlignment, AspectRatio, Padding, SizedBox, Image, List, ThemeData, NumberFormat, Localizations, Theme, BoxFit

## Outcomes Part 3
* Example color declaration: const kShrinePink50 = const Color(0xFFFEEAE6);
* Another good way to use colors: Colors.pink[400]
* Example of good design. We can ask our designers to come up with same style
<p align="middle">
  <img src="/flutter_material_design/screenshots/design1.jpeg" width="300" />
</p>
<p align="middle">
  <img src="/flutter_material_design/screenshots/design2.png" width="300" />
</p>

* Those two web pages can be used to create our own applications; https://material.io/tools/theme-editor/, https://material.io/tools/color/#!/?view.left=0&view.right=0
* Flutter includes a few built-in themes. This theme is one of them: ThemeData.light()
* Flutter or Dart has copyWith() method which can be used to copy object while changing their attributes.
* ThemeData have attributes like accentColor, primaryColor, buttonTheme, scaffoldBackgroundColor, cardColor, textSelectionColor, errorColor etc.
* MaterialApp have theme attribute so we can set theme of the application.
* initialRoute attribute of MaterialApp can be used to define entry point of the application. It also has onGenerateRoute attribute to trigger an action.
* To add fonts we should go pubspec.yaml file. And do the following;
```yaml
fonts:
    - family: Rubik
      fonts:
        - asset: fonts/Rubik-Regular.ttf
        - asset: fonts/Rubik-Medium.ttf
          weight: 500
```
* TextTheme has attributes like headline, title, caption. TextStyle has attributes like fontWeight, fontSize.
* Icons are also have iconTheme. We can set icon theme by inputting primaryIconTheme attribute
* We can set overflow behavior to Text with overflow attribute :  TextOverflow.ellipsis
* We can set max lines of Text through maxLines attribute
* Make sure text-to-background color contrast is at an accessible ratio (3:1 for large type, 4.5:1 for small).
* InputDecoration is also have theme. To set theme we should use inputDecorationTheme.
* All Material Design Widgets like Card, RaisedButton etc. have elevation attribute.
* FlatButton and RaisedButton have shape attributes.
* AppBar has brightness attribute. We can use Brightness.light for example.

<p align="middle">
  <img src="/flutter_material_design/screenshots/103-1.png" width="150" />
  <img src="/flutter_material_design/screenshots/103-2.png" width="150" />
  <img src="/flutter_material_design/screenshots/103-3.png" width="150" />
  <img src="/flutter_material_design/screenshots/103-4.png" width="150" />
</p>

Components: ThemeData, TextTheme, Color, Text, InputDecorationTheme, OutlineInputBorder, BorderRadius, Brightness

## Outcomes Part 4
* Material Design has Backdrop which appears behind all other surfaces in an app, displaying contextual and actionable content. https://material.io/design/components/backdrop.html
* Import the meta package to mark the properties @required. This is a best practice when you have properties in the constructor that have no default value and cannot be null and therefore should not be forgotten. Notice that we also have asserts after the constructor that check the values passed into those fields are indeed not null.
* A Stack's children can overlap. Each child's size and location is specified relative to the Stack's parent.
* FlutterInspector is a powerful tool for visualizing and exploring Flutter widget trees. https://flutter.dev/docs/development/tools/inspector
* The widget lifecycle: The initState() method is only called once, before the widget is part of its render tree. The dispose() method is also only called once, when the widget is removed from its tree for good.
* The AnimationController coordinates Animations and gives you API to play, reverse, and stop the animation.
* AnimationStatus can be completed, forward etc which we can access via animation controller.
* AnimationController has fling method which can take velocity attribute.
* LayoutBuilder is used when a widget must know its parent widget's size in order to lay itself out (and the parent size does not depend on the child.) LayoutBuilder takes a function that returns a Widget.
* To detect gesture on column we need to wrap column with GestureDetector widget.

Components: SingleTickerProviderStateMixin, Stack, CrossAxisAlignment, AnimationController, AnimationStatus, BoxConstraints, RelativeRectTween, RelativeRect, PositionedTransition, LayoutBuilder, SizedBox, EdgeInsetsDirectional, ValueChanged, GestureDetector, TextAlign, HitTestBehavior, AlignmentDirectional, PositionedTransition, Expanded, AnimatedWidget, FractionalTranslation, ReverseAnimation, CurvedAnimation, Offset, Interval, Tween, MaterialPageRoute

## General Notes
* Hot reload is not stable
* Project size is much bigger than Android projects 238mb 
* Auto complete not working from time to time
* Last part of the codelab was quite hard to understand