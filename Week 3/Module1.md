---
label: HTTP Package-Working with APIs
order: 100
---

# Using APIs
You might already know what APIs are and why they are useful, so we'll skip through that part and get to the interesting stuff right away.

For this module you will be using the [JokeAPI](https://sv443.net/jokeapi/v2/) which sends you bad jokes in its response which you can customise further using the request you send.

To get started Install the [http](https://pub.dev/packages/http) package using `pub add` and if on android add the following line to your `AndroidManifest.xml`: `<uses-permission android:name="android.permission.INTERNET" />` which is located in `android/app/src/main/`.

# Promises

Since the http package uses internet to do "stuff" and doing "stuff" takes a certain amount of time depending on the API that you want to use but, how do you tell your app to wait for the "stuff" to complete? Here's where promises come into play.

A `Promise<T>` is something that returns a `T` object (T is a generic here) after a while.

The http package returns `Promise<http.Response>` object which contains the data returned by your request and some additional stuff which we are not concerned about for now.

But you want your data which is inside the Promise. To do that you can use the `await` keyword: 
```dart 
final res = await http.get(Uri.parse("Your URL"));
final data = res.body;
```

It is also recommended to wrap the http part inside a try catch block to resolve any errors that might popup either because your code is wrong or the API that you are using is currently unavailable.

**Note: If you are using `await` inside a function then you must mark the function to "asynchronous" by using the `async` keyword t**
```dart
http.Response getJoke() async {
    final res = await http.get(Uri.parse("Your URL"));
    return res;
}
``` 

## Error Codes

It is extremely helpful to remember some common error codes:
1. 200 = OK, Your request was successful and you got your response back
2. 400 = Bad Request, The request you sent was not valid and you did not get a "useful" response back.
3. 401 = Unauthorized, The API to which you sent the request does not recognize you. This usually happens when the API requires an API key which you usually get from their website.
4. 403 = Forbidden, This happens when you provide an API key but your "tier" of API key does not support the feature you are trying to use.
5. 404 = Not Found, The most common error. This happens when you try to reach an endpoint of an API that does not exist which commonly occurs due to spelling mistakes in the URL.
6. 405 = Method Not Allowed, This happens when the URL you entered is correct but the method you are using is not valid for the endpoint. The JokeAPI only allows "GET" methods on its endpoint and will return a 405 if try sending a "POST" request.
7. 500 = Internal Server Error, This usually means that the API you are trying to use is currently unavailble and hence you get an error.

## Additional Resources

1. [Official Tutorial from Flutter](https://docs.flutter.dev/cookbook/networking/fetch-data)
2. [http Package Documentation](https://pub.dev/packages/http)

## Mini-Assignment

The [JokeAPI](https://sv443.net/jokeapi/v2/) provides two kinds of jokes : A single paragraph type and a Q/A type.

You need to create separate Widgets for both of the types of jokes and then display them using the appropriate widget on a screen.

You can use the fromJSON() method from your previous assignment to convert the JSON objects you receive in the response into a class to use the the Jokes in a better way.