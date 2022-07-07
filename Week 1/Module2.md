---
label: Widgets
order: 190
---

# Widgets in Flutter

Flutter widgets are built using a modern framework that takes inspiration from React. The central idea is that you build your UI out of widgets. Widgets describe what their view should look like given their current configuration and state. When a widget’s state changes, the widget rebuilds its description, which the framework diffs against the previous description in order to determine the minimal changes needed in the underlying render tree to transition from one state to the next.

Watch these videos below for more information:
==- Resources
[!ref target="blank" text="Some Dart if you prefer videos" icon="device-camera-video"](https://youtu.be/x0uinJvhNxI?t=6148)
[!ref target="blank" text="Read more on the official doc"](https://docs.flutter.dev/development/ui/widgets-intro)
Watch the "Widgets" chapter here:
[!ref target="blank" text="Widgets and constructors" icon="device-camera-video"](https://youtu.be/x0uinJvhNxI)

[!ref target="blank" text="More on widgets" icon="device-camera-video"](https://youtu.be/azkqq0FNHuk)

===

## Basic Widgets

This is from the official widgets documentation:

### Text

The Text widget lets you create a run of styled text within your application.

### Row, Column

These flex widgets let you create flexible layouts in both the horizontal (Row) and vertical (Column) directions. The design of these objects is based on the web’s flexbox layout model.

### Stack

Instead of being linearly oriented (either horizontally or vertically), a Stack widget lets you place widgets on top of each other in paint order. You can then use the Positioned widget on children of a Stack to position them relative to the top, right, bottom, or left edge of the stack. Stacks are based on the web’s absolute positioning layout model.

### Container

The Container widget lets you create a rectangular visual element. A container can be decorated with a BoxDecoration, such as a background, a border, or a shadow. A Container can also have margins, padding, and constraints applied to its size. In addition, a Container can be transformed in three dimensional space using a matrix.

## Creating Layouts

Layouts are created using the `Row` and `Column` widgets. Read about <a target="_blank" href="https://medium.com/jlouage/flutter-row-column-cheat-sheet-78c38d242041">using them here.</a>
!!!
We will see more of `ListView` and `GridView` later :zap:
!!!

Try making layouts using various widgets!

## Dart aside

I hope you have already gone through the Dart codelabs. But just to be extra clear, here are some things you need to know about.

### Function Parameters

Functions can have required positional, optional positional or optional named parameters, as given [here](https://dart.dev/guides/language/language-tour#parameters)
So when you are assigning Widgets as a `child`, you are using named parameters of the Widget's constructor.

### Null safety

You must know about null-safety since it is an important topic to understand.
[!ref text="Null safety codelab"](https://dart.dev/codelabs/null-safety)

## The Challenge

Ready for a challenge? Try to replicate this Settings page design.
==- Show Challenge Design

-![](/static/settings.png)

===
Colors used are `0xFF15202D` for the background and `Colors.blueGrey.shade700` for the cards.

!!!light About Colors
If you are not sure what these color values mean, refer to these links:
[!ref target="blank" text="About color codes"](https://rb.gy/cj9nbj)
[!ref target="blank" text="Color in Dart"](https://api.flutter.dev/flutter/dart-ui/Color-class.html)
!!!
Use the `Icon` widget for the arrow icon. Notice that it has to be on the far right.

<!--
!!!success Submit
Submit your code [here](https://forms.gle/M1pMgmG8CGUBxoDe7) if you think you got it!

Solution will be posted in two days.
!!! -->

### Solution

```dart
import 'package:flutter/material.dart';

void main() async {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: const Color(0xFF15202D),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
          child: DefaultTextStyle(
            style: const TextStyle(fontSize: 19, color: Colors.white70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Settings", style: TextStyle(fontSize: 32)),
                const SizedBox(height: 13),
                Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding:
                        const EdgeInsets.symmetric(vertical: 7, horizontal: 13),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade700,
                      borderRadius: BorderRadius.circular(8),
                    ),
//                     height: 50,
                    width: 300,
                    child: Row(
                      children: const [
                        Expanded(
                          child: Text("Account"),
                        ),
                        Icon(Icons.arrow_forward),
                      ],
                    )),
                Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.shade700,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  height: 50,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.shade700,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  height: 50,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.shade700,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

```
