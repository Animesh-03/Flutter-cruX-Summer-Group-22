# Assignment

Let's start creating the final chat application. We will build an app that will have a common room where users can send messages. All parts will be implemented over these two weeks.

The [Final Assignment](/Assignment.md) will have all parts collected in one page.

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
- Implement dark mode, with a button in the AppBar to switch between modes. Look into theming for Flutter apps.

!!!
