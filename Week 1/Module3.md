---
label: Constraints and state
order: 150
---

# Constraints and State

I trust you know the basic Widgets well.

Go through these documents to understand constraints in Flutter:

1. [Constraints](https://docs.flutter.dev/development/ui/layout/constraints)
2. [Box Constraints](https://docs.flutter.dev/development/ui/layout/box-constraints)

## State

We have already come across `state` in the counter app, where the state was defined by a simple `_counter` variable.

**setState**
We use the `setState` function in a `Stateful` widget to update the state and rebuild the widget tree. A stateful widget preserves its state and uses it to redraw itself in the future (if the state changes).

Read about using Stateful and Stateless widgets in this [excellent document.](https://docs.flutter.dev/development/ui/interactive#stateful-and-stateless-widgets)
[!ref text="Here"](https://docs.flutter.dev/development/ui/interactive)

So in Flutter, a stateful widget can hold the state and pass it down so that its children can access it. For example, the home screen in a todo app can store the tasks list as a state and allow other Widgets on the screen to access this list.

+++ TodoScreen

```dart !#10,17-18
class TodoScreen extends StatefulWidget {
  TodoScreen({Key? key, required this.tasks}) : super(key: key);
  List<Task> tasks;
  @override
  State<TodoScreen> createState() => _TodoScreenState(tasks);
}

class _TodoScreenState extends State<TodoScreen> {
  _TodoScreenState(this.tasks);
  List<Task> tasks;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ...
      body: ListView(
        children: [
          TodaysTasks(tasks),
          UpcomingTasks(tasks)
        ]
      )
    );
  }
}
```

+++ TodaysTasks

```dart !#7-9
class TodaysTasks extends StatelessWidget {
  const TodaysTasks({Key? key}, this.tasks) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: tasks.map((task) => ListTile(
          title: task.title
        )).toList()
    );
  }
}
```

+++

Here we see that the state needed by `TodaysTasks` and `UpcomingTasks` widgets is "lifted up" to the parent widget and passed down.

What if we want to change the state in the parent widget from a child?

A trivial solution is to make the state variable(s) global such that all widgets have access to it. But global variables like these make code complicated very quickly and unmanageable.

Instead we declare a function in the parent widget and pass this function as a "callback" to the child widgets.
Let's see this in the above example. Suppose we want to be able to delete a task from the `tasks` list.

1. Declare the function which deletes the task.

```dart !#3-7 TodoScreen
  ...
  List<Task> tasks;
  void deleteTask(int id){
    setState((){
      tasks.removeWhere((task) => task.id == id);
    });
  }
  @override
  ...
```

2. Pass this function as a parameter to the child widgets.
   > Note that we introduced named parameters to make our lives easier.

```dart !#3-4 TodoScreen
  ...
        children: [
          TodaysTasks(tasks: tasks, delFunc: deleteTask),
          UpcomingTasks(tasks: tasks, delFunc: deleteTask)
        ]
  ...
```

3. Call the function from the child widget.

```dart !#4-6 TodaysTasks
...
      children: tasks.map((task) => ListTile(
          title: task.title,
          onTap: (){
            delFunc(task.id);
          }
        )).toList()
...
```

!!!success Hooray!
This is your first very simple state management which can be used for short widget trees.
!!!

Read the more detailed explanation [here.](https://medium.com/nerd-for-tech/lifting-state-up-and-callbacks-7a19d0bdbe53)

!!! State Management
We will look at _proper_ state management in Week 3. Do not stress till then, we have lots to do first!
!!!

## Dart aside

### Functions

Dart has first-class functions, which can be treated as any other variable: passed as an argument or returned by functions. This is why we can pass around callbacks in "lifting state up" mechanism.

```dart Example
int number = 4;
String greeting = 'hello';
Function multiply = (int a, int b) {
  return a * b;
};
multiply(3, 4);// 12
Function operateWith2 = (Function(int, int) f, int x){
  return f(2, x); //call f with 2 and x
};
operateWith2(multiply, 4);// 8
```

[!ref text="First class functions"](https://developer.mozilla.org/en-US/docs/Glossary/First-class_Function)

### Style

An important part of good code is good style that is consistent across programs written in a language. Consistent naming, ordering, and formatting helps code that is the same _look_ the same.

The essential style to keep in mind are these:

#### Naming conventions

Use **UpperCamelCase** for types (classes, enums, extensions, type parameters) and **lowerCamelCase** for other variables.

#### Trailing commas

Also, put a trailing commas after parameter lists to help the formatter format it pleasantly.
Example:
+++ Without trailing commas
Notice the `)))` at the end. Looks like a very sharp corner in the code.

```dart !#9
...
 appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(widget.title,
                textScaleFactor: 2,
                style: const TextStyle(
                  color: Colors.grey,
                ))),
  body: Column(...),
...
```

+++ With trailing commas
Ah, now it is much better to follow each widget.

```dart !#10-12
...
  appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          widget.title,
          textScaleFactor: 2,
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
  body: Column(...),
...
```

+++
Read about styling in [this effective dart document.](https://dart.dev/guides/language/effective-dart/style)
