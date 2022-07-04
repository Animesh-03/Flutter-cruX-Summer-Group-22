---
label: The Counter App
order: 200
---

# Week1

Welcome to Week 1 of the Flutter Summer Group by cruX!
Before we jump into the code of the example counter app created by the `flutter create` command, let's look at what state is and the difference between stateless and stateful widgets.

## State

In generic terms, state of an app or more specifically of a widget in flutter determines what is to be rendered on to the screen. In other words, the UI is a function of state.

![UI as a Function of State](../static/ui-equals-function-of-state.png "UI as Function of State")

To understand state better, let's look at stateless and stateful widgets.

## Stateless and Stateful Widgets

### Widgets

A widget is a dart class which contains the info on how and what to render onto the screen.

> This might be a good time to review or learn Object-Oriented Programming if you don't know already. You can look at the Python track which will introduce OOPS concept.

Everything in flutter is based on widgets. A widget performs a specific task that is described by the ` build` method in the widget.

---

A widget is similar to a react component and the build method is similar to the `render()` function(for a class component) or a `return()` statement (for a functional component) for those familiar with ReactJS.

Every widget is further divided into stateless and stateful widgets and as the name suggests stateless widgets are something that do not concern themselves with state. In other words the UI is a constant function and cannot be changed once rendered.

A stateful widget on the other hand is something that can change given the state of the widget changes. The "state" in a stateful widget is simply a set of variables i.e, they can be an int, a string, a bool etc.

For example let's consider a button that can toggle a variable called `bool isVisible` which in turn toggles something like a text on the screen. When a user presses the button, the app needs to change its state which in this case is `isVisible`. In flutter, to change the state you need to call the `setState()` function which notifies that the state has changed and hence the widget needs to rendered again. If you however change the value of the variable without calling the `setState()` function the widget won't be re-rendered causing the text to remain as it is.

This is all you need to understand the code in the counter app.

**Note: A stateless widget can use stateful widgets and vice-versa in their `build` functions.**

## The Counter App

To understand the code (in the file lib/main.dart) better, removing the comments is recommended.

Like most programming langauges, dart has a `main()` function which acts as the entry point to the code so let's start with that.

The `main` function calls a function `runApp()` which as the name suggests starts the app from the class named `MyApp`. This `MyApp` class is a stateless widget which has a pretty straight forward syntax.

As mentioned earlier every widget has a `build` function which determines the UI. Let's look at the build function of this class.

It returns something called a <a href="https://api.flutter.dev/flutter/material/MaterialApp-class.html">`MaterialApp`</a> which let's you use the <a href="material design">material design</a> which is a set of icons, styles etc. widely used on the web and mobile. It also provides a huge library of Icons which we will look at later.

This MaterialApp has some parameters like `title` which defines the name of your app. A `theme` parameter which takes in the `ThemeData` widget which has a `primarySwatch` parameter which accepts a `Color`. You can mess around the with the color and look at the changes. This color is the default set of colours which your app uses unless you mention the color specifically for widgets. The last parameter is called `home` which is the main part of MaterialApp that is rendered. This takes in a class called `MyHomePage`.

The `MyHomePage` widget is a stateful widget and stateful widgets have a whacky syntax which requires you to split it into two parts which in this case is the `MyHomePage` and `_MyHomePageState`. In statefulWidgets we are mainly concerned with the second class i.e `_MyHomePageState`.

The `build` method of the `_MyHomePageState` returns a <a href="https://api.flutter.dev/flutter/material/Scaffold-class.html">`Scaffold`</a> which is a material widget which provides a set of default styles. This widget has an `appBar` parameter which takes in the <a chref = "https://api.flutter.dev/flutter/material/AppBar-class.html">`AppBar`</a> widget and provides the title of the appbar.

You can notice that the syntax used is `widget.title`, this is because the variable `title` is in another class `MyHomePage` and to access the variables from this class you need to use `widget.variableName`.

The next parameter in <a href="https://api.flutter.dev/flutter/material/Scaffold-class.html">`Scaffold`</a> is the `body` parameter which is self-explanatory as to what it is. This uses the very basic layout widgets like <a href="https://api.flutter.dev/flutter/widgets/Center-class.html">`Center`</a> and <a href="https://api.flutter.dev/flutter/widgets/Column-class.html">`Column`</a> which we will look at in the next module along with a few more widgets used for layout. The `Column` widget has two <a href="https://api.flutter.dev/flutter/dart-html/Text-class.html">`Text`</a> widget, one of them being a `const` implying that it does not change once rendered and another one displaying the value of the `_counter` variable which is the state of this widget.

The final parameter of the `Scaffold` widget is `floatingActionButton` which is the button on the bottom right. This takes in a <a href="https://api.flutter.dev/flutter/material/FloatingActionButton-class.html">`FloatingActionButton`</a> widget. The `onPressed` parameter on it is takes in the function that is called when a user presses the button which in this case is called `_incrementCounter`. This function calls in the `setState()` function and inside it, increments the counter. This re-renders the widget causing it to show the updated counter value.
You can try and remove the `setState()` to see what happens.

The `child` parameter on the `FloatingActionButton` defines the Icon that is displayed on the button. The `Icons` class is a part of the material design icons.

That's it! You now know the basics of Flutter.

Didn't get parts of the code or the entirety of it? Maybe this will help: https://www.youtube.com/watch?v=-QRQIKtPTlI from timestamp 08:30 min to the end. Understood everything? Watch it anyway.
[!ref target="blank" text="Watch here"](https://www.youtube.com/watch?v=-QRQIKtPTlI&t=510)
Still didn't understand something? Feel free to ask in #discussion channel(preferred) using @FlutterInstructor or dm any of the FlutterInstructors.

# Mini Assignment

Modify the code in main.dart to toggle the visibility of any text widget using the <a href="https://api.flutter.dev/flutter/widgets/Visibility-class.html">`Visibility`</a> widget and the `floatingActionButton`.

A slightly more advanced task would be to change the icon on the floating action button based on the visibility of the text. Take a look at `Icons.visibility` and `Icons.visibility_off` icons.

Hint: Ternary operator.

You do not need to submit this assignment however you can do so by dm-ing any of the Flutter Instructors your GitHub project link if you want to.

We will be posting the next module in a couple of days so keep a look out for that. We will also be annoucing your Week 1's assignment in the next module.
