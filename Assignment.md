---
label: Final Assignment
---

# Final Assignment

This is the final chat application we will create using `Provider` and `Firebase`. There will be multiple parts that shall be updated in the coming week.

We will build an app that will have a common room where users can send messages.

> Contents given here are the same as those in the assignment sections on Week 3 and 4

## Part 1

### Design

Make a page that displays the room. This will show the messages and an input field at the bottom along with a send button to send the message typed.

> This is similar to the conversation window you get when you click on a group name in WhatsApp.

### Functionality

Since we don't have a backend yet, create a local dummy messenger. When you type a message and hit _Send_, you can see the message up in the window as a bubble.

The message bubble should contain the message itself, sender (_You_, in this case) and the sent time.

You can add hardcoded dummy messages as well, just to test your UI.
!!! Bonus

- Make your messages right aligned, and others' left aligned.
- Give every sender a random colour for every message bubble. Normally, colours are fixed for every user, but we shall do that when we add logic to receive messages.
- Implement dark mode, with a button in the AppBar to switch between modes. Look into theming for Flutter apps.cr
!!! 

## Part 2

### Firebase Setup

Create a firebase project and connect it with your flutter app.

Setup authentication of your choice on firebase console by enabling it.

### Register and Login Page

Create 2 screens for each of register and login page with 2 input fields in login for email and password and 3 input fields in register page for email, password and username.

There must be a way to navigate to and fro from login and register screens.

**Note: The above design is only for the E-mail/Password authentication. You can come up with a suitable design if you choose a different mode of authentication.**

### Functionality

The Register screen must have a button which calls the register logic in firebase. Upon successful registration you need to call an additional function which takes in the username entered and stores it in firestore. Since firestore is not yet covered you can leave this function empty for now.
Make sure to catch any errors and deal with them appropriately.

Make an AuthWrapper Widget as described in the Firebase Module in Week 4 and add a static function to signout.

Add a signout button in the chat screen which calls the static funcion in AuthWrapper when pressed.

The Login Screen must have a button that calls the login logic in firebase.