# **Installation And Introduction**

# What is Flutter?
Flutter is a multiplatform framework from Google used for building apps for web, mobile and desktop.

What do I mean by multiplatform? It means one can build apps for a device regardless of the platform it is running on like Android, iOS, Windows, Linux etc.

You might be aware of the shortage of apps for iOS for campus related task. This is because all those apps were built using native frameworks.

Native apps are those which are built for a specific platform and this means a developer needs to write code separately for each of those platforms though they are meant to serve the same purpose. This is very disappointing for developers that code apps that require multiple platforms.

Flutter however solves this issue as it only requires a developer to code once yet it can build to many different platforms like Android, iOS and Windows. This also ensures uniformity across the various platforms the app is deployed to.

Another advantage of Flutter over the standard frameworks which use HTML and CSS is that Flutter only uses "Dart" for everything it does. Dart is the language built specifically for flutter but it is very similar to other languages like Java and shares most of the syntax you use in C/C++ with some additional functions.

# Installation
To get started with Flutter head on to https://docs.flutter.dev/get-started/install and follow the steps for your OS.

<span style="color:orange">Make sure to follow every step sequentially and **pay heed to the warnings** to avoid errors</span>

Skip the "Set up Android Emulator" part for now as we will look at it later. However, follow the next steps in the web page.

Run `flutter doctor` in a command prompt or a shell after installation to ensure that flutter is working as intended.

We will be using VSCode throughout the summer group instead of Android Studio as VSCode is a million times faster and also will work on relatively potato PCs. However, this does not mean that installation of Android Studio is optional as Flutter needs it to be installed in your system.

To start using flutter in VSCode install the following extensions:

1. https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter
2. https://marketplace.visualstudio.com/items?itemName=Nash.awesome-flutter-snippets

Awesome flutter snippets provide certain snippets which makes life easier. We will be mainly using it for building stateless and stateful Widgets in the course so search the shortcuts for them in its documentation.


# Dart
There's just one more step before we actually get to building your first flutter project which is to understand the Dart language. You don't necessarily need to know every minute detail of dart or any new language for that matter to get started. You only need enough to roughly understand the objective of code that you see.

A good starting point for learning dart: https://codelabs.developers.google.com/codelabs/from-java-to-dart/

You can however complete additional codelabs if you want to, however it is not really necessary. https://dart.dev/codelabs

# Building A Flutter App
The exciting part is finally here! Let's build our first app.

Open up a terminal in VSCode and run the following command: `flutter create newsapp` You can change the name of the app to anything else you like but make sure to not have any capital letters in the name.

As you can tell, the above command will create the necessary files for a flutter project. And yes, it does take a while to run the command.

This command will already create a basic app created for you all packed into a single dart file in lib/main.dart .

You can run the app by either using an emulator or plugging in your phone to your PC using your USB charging cable. Note that using an emulator will consume a significant amount of PC resources and is only recommended for systems with 16GB RAM. The Potato PCs can run their app using the USB cable.

To use emulator: https://docs.flutter.dev/get-started/install/windows#set-up-the-android-emulator

To run on physical device: https://medium.com/@ferilukmansyah/easy-way-to-setup-your-android-device-to-run-flutter-project-28bddf0fa7f1

# Next Steps
We will be starting the Flutter track with Week 1 in July. In the meanwhile, enthusiastic folks can try and decipher the code in lib/main.dart of the project you just created. Do not get discouraged even if you understood absolutely nothing! Learning a new framework is a daunting task by itself and pair it up with a new language and congratulations, you just entered hell for a week or two (Yes, it doesn't take too long to get comfortable with Flutter). I will begin Week 1 by explaining the code in main.dart before anything else. Stay Tuned!