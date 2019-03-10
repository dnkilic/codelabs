A sample command-line application.

Codelab

In Dart, you can define code outside of classes. Variables, functions, getters, and setters can all live outside of classes. We can define multiple classes in one file.

All identifiers are public by default. Dart doesn't have keywords for public, private, or protected.

Dart uses 2-character indentation, by convention, instead of 4.

Read : https://www.dartlang.org/guides/language/effective-dart

Dart constructor may does not have body. Using this in constructors parameter list is a handy shortcut for assigning values to instance variables.

When creating new object new keyword is optional. if you know variable time wont change you can use final instead of var.

All Dart classes have toString() method which we can override.

To override methods we should use @override annotation.

Dart supports single or double quotes when specifying strings. Single interpolation is possible with this format ${expression} or $variableName

We can shorten one line functions or methods using => notation.

To mark a Dart identifier as private we can start its name with an underscore (_). Dart compiler will enforce privacy for any identifier prefixed with an underscore(_)

Uninitialized variables are always null.

By default, Dart provides implicit getters and setters for all public instance variables. You don't need to define your own getters/setters unless you want to enforce read-only or write-only variables, compute or verify a value, or update a value elsewhere.

Dart doesn't support overloading constructors and handles this situation differently, as you will see in this section. Rather than overloading it support optional named parameters. Named parameters should be inside curly brace.

Default values of an optional parameter must be a constant.

Factories, a commonly used design pattern in Java, have several advantages over direct object instantiation, such as hiding the details of instantiation, providing the ability to return a subtype of the factory's return type, and optionally returning an existing object rather than a new object. Dart have factory reserved word to create factory methods.

Dart supports abstract classes.

Dart has num type.

To use ‘ in string we can use \’ for ‘’ declarations or we can declare string by using “”.

Dart language does not include an interface keyword because every class defines an interface. Even though the CircleMock class doesn't define any behaviors, it's valid Dart—the analyzer raises no errors.

In functional programming you can do things like:
* Pass functions as arguments.
* Assign a function to a variable.
* Deconstruct a function that takes multiple arguments into a sequence of functions that each take a single argument (also called currying).
* Create a nameless function that can be used as a constant value (also called a lambda expression; lambda expressions were added to Java in the JDK 8 release).

Dart supports all of these features. In Dart even functions are objects and have a type, Function. This means that functions can be assigned to variables or passed as arguments to other functions. You can also call an instance of a Dart class as if it were a function, as in this example.

class WannabeFunction {
  call(String a, String b, String c) => '$a $b $c!';
}

main() {
  var wf = new WannabeFunction();
  var out = wf("Hi","there,","gang");
  print('$out');
}

Lists and Iterables, from dart:collection, support fold, where, join, skip, and more. Dart also has Maps and Sets.

Further Readings 

https://www.dartlang.org/guides/libraries/useful-libraries
https://pub.dartlang.org
https://news.dartlang.org/2012/02/method-cascades-in-dart-posted-by-gilad.html
https://news.dartlang.org/2015/08/dart-112-released-with-null-aware.html
https://codelabs.developers.google.com/?cat=Flutter

Articles
* [Why Flutter Uses Dart](https://hackernoon.com/why-flutter-uses-dart-dd635a054ebf)
* [Announcing Dart 2: Optimized for Client-Side Development](https://medium.com/dartlang/announcing-dart-2-80ba01f43b6)
* [Why I moved from Java to Dart](https://hackernoon.com/why-i-moved-from-java-to-dart-8f3802b1d652)
* [async await](https://dartpad.dartlang.org/fae22cffa7b184b4d27cd96dd633a5af)

Resources
* [A Tour of the Dart Language](https://www.dartlang.org/guides/language/language-tour)
* [A Tour of the Dart Libraries](https://www.dartlang.org/guides/libraries/library-tour)
* [Effective Dart](https://www.dartlang.org/guides/language/effective-dart)

Websites
* [Dart Language](www.dartlang.org) 
* [Dart for the web, including AngularDart](webdev.dartlang.org) 