---
order: 1
---

# Assignment

Week 1... is over! Great work on learning the basics of Flutter and Dart. This assignment is going to be the proof of your learning, let's go!

## Dart (Part 1)

Generics are an important part of Flutter and it is essential that you are comfortable with them. Go through [this article on generics](https://dart.academy/generics-in-dart-and-flutter/) to know more.

!!!
Don't worry about `Future`s or `Stream`s yet, we will learn and use them in Week 4.
!!!

## The Problem

> This is the assignment problem, just to be clear.

Imagine you are working as an intern in a restaurant and you are tasked with managing _stacks_ of plates. Since plates are to be handled with great diligence, you have built a robot who handles the plates with even greater care.

You now have to just write the software to control the robot.

### Plates Handler

Create a generic class (stack) named `PlatesHandler<T>` with the following methods:
=== push : `(T) -> void`
Pushes an element (plate) onto the stack.

```dart Example
final stack = PlatesHandler<int>();
stack.push(1); // 1
stack.push(2); // 1 2
stack.push(3); // 1 2 3
```

=== pop : `() -> T`
Removes the top element from the stack.
Throws an error if the stack is empty.

!!!danger
Throw `Exception("Stack empty"))` if stack is empty.
!!!

```dart Example
stack.pop(); //-> 3
stack.pop(); //-> 2
stack.pop(); //-> 1
stack.pop(); //-> error: stack is empty
```

=== top: `()->T`
Get the top of the stack. Throws an error if stack is empty.
=== length : `get -> int`
A getter for the length (size) of the stack.
=== isEmpty : `get -> bool`
A getter for whether the stack is empty.
===
Awesome! You have implemented the plate stack handler for the robot.

But now the chef wants a pancake stack handler too! Also the cleaners want a chair stack handler!

Well, what do you do now? There is no time to implement stacks from scratch again. Let's use the previous stack handler!

### Stack extendible

Rename the `PlatesHandler<T>` to `Stack<T>`. Since the chef wants to use this for pancakes, create a `Pancake` class with the following properties:

**Class: Pancake**

=== weight: `double`
Represents the weight of the pancake.
=== hasTopping: `bool`
Whether this pancake has a syrup topping.
=== serialNumber: `int`
Serial number of this pancake.
=== Pancake: `(int, bool)`
Constructor, with weight and hasTopping arguments.
===
Now, create the `PancakeHandler` class that extends `Stack` that you defined earlier. (Note that this is not a generic class, it will handle only `Pancake`s)
==- How the class declaration should look

```dart !#1
class PancakeHandler extends Stack<Pancake>{
  ...
}
@immutable
class Pancake {
  ...
}
```

===
We want to be able to remove more than one pancake from the top at once, so you override the `pop` method to take an optional parameter for the number of pancakes to be removed.
=== pop: `([int n]) -> Pancake`
Removes `n` pancakes and returns the last removed pancake.
Default n is `1` if not provided.
===
We also should be able to remove a set of pancakes at once from the middle of the stack. The catch is that the robot cannot handle the syrup. If the pancake under the `from` or the pancake at `to` has the topping, throw an error.
=== remove: `(int from, int to)-> Pancake`
Removes pancakes from indices `from` to `to`, both inclusive. Returns the bottommost pancake (at index `from`).

> Note that the pancakes above `to` will "fall" down.

!!!danger
Throws an error if the pancake under, or the top has syrup.
!!!

===
Amazing, the robots are working great! You think your job is done and are going to celebrate but- the Chef wants something more!

He wants an extra functionality to inspect the pancakes to see whether they meets his standards and to remove them from the stack if necessary.

That is easy for the bright programmer you are! Create an extension on PancakeHandler to add this function.

=== inspect: `(bool Function check()) -> int`
Remove all pancakes which return false from `check`.
Returns number of pancakes removed.
===

### Starter code

Use this starter code and implement the classes and functions. More information in the [submission guidelines](#submission-guidelines)
==- Starter code

```dart
abstract class StackInterface<T> {
  void push(T);
  T pop();
  T top();
  bool get isEmpty;
  int get length;
}

/// actually the PlatesHandler but renamed
class Stack<T> implements StackInterface<T> {
  /// You can only use this list for implementing the methods
  final _plates = <T>[];
  @override
  bool get isEmpty => throw UnimplementedError();

  @override
  int get length => throw UnimplementedError();

  @override
  T pop() {
    // TODO: implement pop
    throw UnimplementedError();
  }

  @override
  void push(T) {
    // TODO: implement push
  }

  @override
  T top() {
    // TODO: implement top
    throw UnimplementedError();
  }
}

class Pancake {
  final double weight;
  final bool hasTopping;
  final int serialNumber;
  Pancake(this.weight, this.hasTopping, this.serialNumber);
  @override
  bool operator ==(Object other) {
    return (other is Pancake) && other.serialNumber == serialNumber;
  }

  @override
  int get hashCode => serialNumber;
}

// TODO: implement PancakeHandler class which extends Stack
class PancakeHandler extends Stack<Pancake> {
  // TODO: Override `pop` method
  @override
  Pancake pop([int n = 1]) {
    return _plates.first;
  }

  Pancake remove(int from, int to) {
    return _plates.removeAt(from);
  }
}

extension ChefsPancakeHandler on PancakeHandler {
  int inspect(bool Function(Pancake) predicate) {
    // TODO: implement inspect
    throw UnimplementedError();
  }
}

```

===

## Flutter (Part 2)

Recreate this design in Flutter. The best submission will be marked as the "official" solution!
[!file Download design](/static/Assignment_1.jpg)
==- Show design

![](/static/Assignment_1.jpg)

 <!-- <img src="/static/Assignment_1.jpg" height="300"> -->

===

## Submission guidelines

### Dart (Part 1)

You have to submit a dart project with your code.

Fork [this repository](https://github.com/Akshat-Oke/crux-flutter-assignment_1) and clone it locally.
[!ref text="Part 1"](https://github.com/Akshat-Oke/crux-flutter-assignment_1)

- Use the starter code in the `lib/assignment_1.dart` and implement the class methods.

- To test, run `dart test` in the the root directory, or navigate to the `test/assignment_1_test.dart` file and click the `Run` text button above `void main()` in VS Code.

Once finished, submit the link to your fork in the form given below.

### Flutter (Part 2)

Create a git repository and push it to GitHub. Submit the link to this repository.

### Google Form

Submit this form embedded below.

> Or [click here](https://docs.google.com/forms/d/e/1FAIpQLSf9pZWhwFGWGDjESMvSCGGQt8Rls5PCAyEmD3-eDn0-TpHhvw/viewform?usp=sf_link) to open it in a separate browser tab.

[!embed](https://docs.google.com/forms/d/e/1FAIpQLSf9pZWhwFGWGDjESMvSCGGQt8Rls5PCAyEmD3-eDn0-TpHhvw/viewform?embedded=true)

<!-- <iframe src="https://docs.google.com/forms/d/e/1FAIpQLSf9pZWhwFGWGDjESMvSCGGQt8Rls5PCAyEmD3-eDn0-TpHhvw/viewform?embedded=true" width="640" height="2288" frameborder="0" marginheight="0" marginwidth="0">Loading…</iframe> -->
