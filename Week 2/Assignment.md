# Assignment

This week you will be building a fully functional Todo App with the following specifications:

1. Have a `Home` screen which displays all the todo items using a `ListView`(More on this later).
2. Have floatingActionButton which navigates the user to an `AddItem` Screen.
3. The Add item Screen should have the following:
   1. Item title input field
   2. Item description input field
   3. Submit button
4. Upon tapping the submit button a new item should be added to the Home screen (preferably to the top of the list)
5. Each item should be "Slidable"(More on this later) which reveals two actions:
   1. Delete Item
   2. Complete Item
6. If an item is marked complete change its color to green or something suitable.
7. When an item is pressed navigate the user to another page which has an app bar with the title being the Item's title and the body of the page containing the Item's description.
8. Finally the list must be saved to the device using the shared_prefs(More on this later) package which allows the user to have persistent data.

## ListView

The `ListView` widget is an extremely useful and easy to use widget which helps you to handle a List of data. In our case we will have a `List<TodoItem>` which will have the necessary information to render onto our screen like the title, description, completed , etc.

You can find the documentation of the widget [here](https://api.flutter.dev/flutter/widgets/ListView-class.html).

Make sure you use the `ListView.builder()` method to render the list onto the screen.
   
## Slidable

This is a very cool widget which makes your app feel more modern. Upon sliding this widget, it reveals a drawer with `actions` you specify.

Learn more about this widget [here](https://pub.dev/packages/flutter_slidable).

[Here's](https://pub.dev/packages/flutter_slidable) a quick tutorial on how to use the `Slidable` widget.

## Shared Preferences

[This](https://pub.dev/packages/shared_preferences) widget allows the app store data locally which can then be retrieved when the app starts again. This allows the todo items to be retrieved even after the app is closed.

In simple terms you need to [Serialize](https://en.wikipedia.org/wiki/Serialization) your `TodoItem` object to JSON which is then converted to a string and stored by the Shared Preferences Plugin.

Serialization can be a difficult thing to grasp so [here's](https://stackoverflow.com/questions/61316208/how-to-save-listobject-to-sharedpreferences-in-flutter) an example as to how you can use the Shared Preferences Plugin to serialize and deserialize a List of objects.

## Basic Project Outline

Since you might not be familiar with OOP concepts which is necessary to write clean and manageable code, here's a brief overview of what you should be doing:

=== TodoItem Class

```dart
class TodoItem {
  String title;
  String description;
  bool completed = false;
  TodoItem({required this.title, required this.description});

  factory TodoItem.fromJSON(String json) {
    // Get TodoItem back from the json string
    // You can split this function into two parts too if you want
  }

  static String toJSON(TodoItem item) {
    // Convert TodoItem to a json string
    // You can split this into two functions too
  }

  void complete()
  {
    // Mark the todoItem as completed
    // Call it in the actions of Slidable widget
  }
}
```
=== Home Class

```dart
class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<TodoItem> list;

// initState() runs the first time when the widget is loaded
  @override
  void initState() {
    super.initState();
    // Get your TodoItem list from your shared prefs package using the function in the TodoItem class
  }

  @override
  Widget build(BuildContext context) {
    return (
        // The rest of the widget tree

        ListTile(
      // Other parts of the code
            onTap: () {
                // Navigate to the display item screen and pass the TodoItem into the route
        },
      ),
    );
  }
}
```


=== Display Item

```dart
class DisplayItem extends StatelessWidget {
  const DisplayItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the todoItem passed to the route

    return (
      // Display whatever was metioned in the requirements
    );
  }
}
```

===

The add item page should be pretty simple so we leave that to you.

## Submission Guidelines

This assignment is slightly complicated for beginners but we don't expect you to do everything without any bugs. You can submit whatever you have done. Feel free to contact us in case of any difficulties or clarifications.

The current deadline is 19th 11:59 PM. We might extend it if needed upon demand.

Form Link for submission: [Assignment 2 Form](https://forms.gle/LCowA4FsfAwSMDgz9)


