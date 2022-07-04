---
label: Widgets
order: 100
---

# Widgets in Flutter

Flutter widgets are built using a modern framework that takes inspiration from React. The central idea is that you build your UI out of widgets. Widgets describe what their view should look like given their current configuration and state. When a widget’s state changes, the widget rebuilds its description, which the framework diffs against the previous description in order to determine the minimal changes needed in the underlying render tree to transition from one state to the next.

=== Resources
[!ref target="blank" text="Some Dart if you prefer videos" icon="device-camera-video"](https://youtube.com/watch?v=x0uinJvhNxI&t=6148)
[!ref target="blank" text="Read more on the official doc"](https://docs.flutter.dev/development/ui/widgets-intro)
Watch the "Widgets" chapter here:
[!ref target="blank" text="Widgets and constructors" icon="device-camera-video"](https://youtube.com/watch?v=x0uinJvhNxI)

[!ref target="blank" text="More on widgets" icon="device-camera-video"](https://youtube.com/watch?v=azkqq0FNHuk)

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

## Challenge

Ready for a challenge? Try to replicate this Settings page design.
==- Show Challenge Design

-![](/static/settings.png)

===
Colors used are `0xFF15202D` for the background and `Colors.blueGrey.shade700` for the cards.

<!-- > If you are not sure what these color values mean, refer to these links: -->

!!!light About Colors
If you are not sure what these color values mean, refer to these links:
[!ref target="blank" text="Understanding color codes"](https://developintelligence.com/blog/2017/02/rgb-to-hex-understanding-the-major-web-color-codes)
[!ref target="blank" text="The Color class in Dart"](https://api.flutter.dev/flutter/dart-ui/Color-class.html)
!!!
Use the `Icon` widget for the arrow icon. Notice that it has to be on the far right.
!!!success
Solution will be posted in two days!
!!!
