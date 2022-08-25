---
label: Firebase and Authentication
order: 97
---

# Firebase
It's finally time to use the amazing features of firebase in your app!

To get started head on to [Firebase Console](https://console.firebase.google.com) and create a project. Give your project any name you want and google analytics part doesn't really matter so keep it if you want to.

After your project is created you will be taken to your project's dashboard. Click on the Flutter Icon there and follow the steps like installing the CLI.

**Note: The CLI tool might not work on some terminals like git bash so use the windows cmd prompt for the steps mentioned there.**

You likely want to setup your project for just android and ios so select just those.

You are now done connecting your firebase project to your flutter app.

Call the following in the `main()` function before call the runApp function. Don't forget to mark the main function to be `async`.
```dart
await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
```

## Authentication

You now need a way to let users signup and login to use your chat application.

To do this firebase provides a ton of different ways to enable users to login. Go the authentication Tab from the navbar on the right: Build->Authentication-> Sign-In methods

For the sake of explanation here I will be choosing the E-mail/password authentication but you are free to choose whatever you want, though the documentation for each will be different.

## Email Authentication

Have a brief look at the documentation to understand how the email auth works: [Docs](https://firebase.google.com/docs/auth/flutter/password-auth?hl=en)

This type of authentication needs two screens: one for signup and the other for login. Make sure to have a way to navigate between the 2 screens like "Register here" button in the login screen and "Login here" button in the register screen.

As you can tell from the docs, you need two InputFields for the email and password and then pass it to a function that calls the respective firebase functions for signup and login.

Once a user successfully registers you can see that this gets reflected in the Users tab of Authentication. Each user is assigned a random Unique ID aka UID by firebase.

A cool thing that firebase does is that automatically stores the user that logged in last time in your local storage. This user can the be accessed with
```dart
dynamic user = await FirebaseAuth.instance.currentUser
```

The current user is `null` when there is no user that is signed in.

## Authentication Wrapper

Create a Widget called `AuthWrapper` which is the first widget that will be called after the `MaterialApp`.

This widget will check if there is a user that is logged in currently and pass him to the chat screen if yes, else pass him to the login screen.

You can check for the user by using another function that firebase provides called `authStateChanges()`. This function returns a stream which contains the data on the user.

You can use the `StreamBuilder` widget which takes in the stream and uses it to rebuild the widget if there is a change to the stream.
```dart
Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // Return the Chat Screen Widget
          } else {
            // Return the Login Widget
          }
        });
  }
```

You can have some other static functions inside this widget that are concerned with authentication like a `signOut()` function which clears the `currentUser`.

## Intro to Firestore

You need some way to let the user pick his own username but the signIn function that firebase provides has no such option. Hence you need to map the UID that firebase generates to a username that a user can pick. So now you need to have 3 Input fields in the signup Screen.

After a user is created successfully (without any exceptions) you need to get the UID that is generated and map to his username with something like this using JSON
```dart
{
    [uid]: username
}
```

Now that you are done with mapping you need to store this somewhere on firebase.

Firestore is the database that firebase provides which is a collection-document based database. To learn more about how that works take a look at this: [Firestore Data Modelling](https://www.youtube.com/watch?v=lW7DWV2jST0)

We will proceed with how to use firestore in the next module.