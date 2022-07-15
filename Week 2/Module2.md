---
label: Navigation
order: 90
---

# Navigation

Navigation here refers to travelling between the various pages, which in the context of navigation are called `Routes` in your app.

## Push and Pop

Sound familiar?

In the assignment last week, you were asked to create a `stack` with the `push` and `pop` functions.

The navigation system in flutter is very similar to a stack. Here the routes are stacked upon each other. To demonstrate this, let's consider 'WhatsApp' a very familiar app. In case you never heard of it you belong to the Amish community.

WhatsApp has a home screen displaying the various groups and contacts which we call the `Home` page. On tapping one of the contacts, you are sent to the `Chat` page but what happens to the `Home` page? It lies underneath the `Chat` page still in memory, similar to a stack. Once you press the back button you go back to the `Home` page meaning that the `Chat` page has been `pop()`-ed.

What happens if the Navigation doesn't function like a stack but instead there's always a single page in memory? To go back to a previous page, the app will need to re-render the entire page going through all the widgets in the tree. This will consume a significant time which will make your app feel less responsive.

Navigation is a pretty broad topic to cover. Fortunately, flutter docs has a pretty good tutorial-esque documentation.

[Navigation Cookbook](https://docs.flutter.dev/cookbook/navigation)

Here's a little more detailed but also more complicated documentation of the `Navigator` widget: [Navigator](https://api.flutter.dev/flutter/widgets/Navigator-class.html). You might not understand everything in the docs but I recommend to give it a read anyways. Also look at the static methods of the `Navigator` widget just to get an idea of what can and cannot be done.

## Page Transitions

`MaterialPageRoute` provides an in-built page transition which looks better than the ordinary transition. You can create custom page transition animations too if required but we leave that part to you to explore.

You can look at [page_transition](https://pub.dev/packages/page_transition) package which has a few page transitions which are easy to use. To learn how to use it take a look at [this](https://www.youtube.com/watch?v=q-e5t3qnB_M). If you want to do something that is not methioned in the video look at the package's documentation in [pub.dev](https://pub.dev).

# Forms

Often, users will need to be able enter stuff into the app like username, password, their preferences etc. Users will need a text box to be able to type into. This is where forms come in place.

Forms are a relatively easy and small topic, Take a loot at this [cookbook](https://docs.flutter.dev/cookbook/forms) to use forms in your app.

# Mini Assignment

Create 2 routes. In the first route there will be a text widget and a floatingActionButton. On tapping the button, user will be navigated to the 2nd route where the user can type something in an input field and another button to go back which will take you back to the first route and and the text widget will display the text entered by the user.

This mini-assignment is related to the assignment of this week so we recommend you do it.

We will be releasing your assignment sometime in the next two days. This time however you will be building a complete app instead of something abstract like last time.