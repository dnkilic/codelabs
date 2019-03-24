# Codelab: Building Beautiful UIs with Flutter

Sample project to learn basics of Flutter.

## Getting Started

## Outcomes
* To add app bar to application we can use AppBar widget inside Scaffold widget
* Stateless widgets should override build method
* Scaffold and AppBar widgets are specific to MaterialApp widget
* TextField is a stateful widget.
* In flutter if you want to present stateful data you should encapsulate it inside State object
* Stateful widgets should override create state method. State class should override build method
* Using new keyword to create objects is optional
* We can use TextEditingController to manage the text field interactions. TextField have controller attribute.
* InputDecoration can be used inside TextField to show hint
* TextEditingController has clear() method to clear text inside TextField
* Prefixing an identifier with _ marks it as private.
* Row and Column can be used to align widgets horizontally or vertically.
* Row widget has children attribute which can take more than one children.
* Flexible widget automatically size the text field to use remaining space that isn used by button
* We can create icon buttons by using IconButton widget
* Icons inherit their color, opacity and size from IconTheme and us its data property to specify ThemeData object of current theme.
* CrossAxisAlignment.start can be used inside Row to position children relative to parent widgets
* Empty array initialization ; final List<ChatMessage> _messages = <ChatMessage>[];
* Only synchronous operations should be performed in setState method.
* Theme.of(context) can be used to access theme properties
* Divider Widget can be use to separate column or row items
* ListView.builder can be used to populate list view
* Container is useful when defining background images, padding, margin and other common layout details
* reverse attribute of ListView grant ListView to show its elements bottom to top
* Animations in Flutter are encapsulated as Animation objects that contain a typed value and a status(forward, backward, completed and dismissed)
* AnimationController can be use to specify how the animation should run(duration and playback direction).
* When creation an AnimationController we must pass it as vsync argument.
* vsyn argument prevent animations that are offscreen from consuming unnecessary resources.
* In Dart, a mixin allows a class body to be reused in multiple class hierarchies
* Duration can be used to set durations
* SizeTransition class provides an animation effect where the width or height of its child is multiplied by a given size factor value.
* Its good practice to dispose the animations
* For each loop; for (ChatMessage message in _messages)
* Declaring boolean with Dart; bool isComposing = false;
* setState should be used to access State properties
* when onPressed button set to null button color automatically use Theme.of(context).disabledColor
* Expanded widget can be used to wrap text
* TargetPlatform.iOS and TargetPlatform.android can be used to specify different behaviours for different OS
* CupertinoButton can be used to add iOS style buttons
* Sample apps; https://github.com/flutter/flutter/tree/master/examples