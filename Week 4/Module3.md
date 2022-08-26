---
label: Firestore
order: 95
---

# Firestore

The video attached in the last module should have given you a fair idea about NoSQL databases and the collection-document structure used in firebase. If you haven't watched it yet then please do.

Firestore in our project has a pretty similar function to shared_prefs package you used to store TodoItem but as an added bonus Firestore is hosted on the internet as opposed to the local storage on a device. This allows all the users of your app to gain access to the database.

## Using Firestore

Firestore Docs: [Docs](https://firebase.google.com/docs/firestore/query-data/get-data)

You can see the various functions that firebase can provide in the left navbar.

Go to the project you created in [Firebase Console](https://console.firebase.google.com).

 Then Build->Firestore-> Create Database -> Start in Test Mode.

 Now create a collection called users. This collection will store the user information in the form of documents.

 For easy access of a particular user we will name the document to be the uid.

 In each document which represents the user info we will store the following:
 - firebase uid
 - username

### Adding Data

We first need to get a reference of firestore database.
```dart
final db = FirebaseFirestore.instance;
```
The `db` variable now references our database that we created in firebase console.

Now let the userInfo that we want to add to firebase be a `JSON` or a `Map<String, dynamic>` in dart terms.

```dart
final uid = await FirebaseAuth.instance.currentUser.uid
final userInfo = <String, dynamic>{
    "uid": uid
    "username": username // Get from input field
}
```

To add this data to firebase as a **new** document:
```dart
final db = FirebaseFirestore.instance;
final uid = await FirebaseAuth.instance.currentUser.uid;

final userInfo = <String, dynamic>{
    "uid": uid // uid = FirebaseAuth.instance.currentUser
    "username": username // Get from input field
}

await db.collection("users").doc(uid).set(userInfo);
```

The above code will create a new document with the name `uid` and then set the contents of the document to the `userInfo` map. Note that most of the firestore functions are asynchronous so it's advisable to wrap it in a try-catch block.

**Note: If a document with the name `uid` already exists then a new document is not created and the contents of the existing document are over-written.**

```dart
try{
    // Firebase Stuff
}
catch(e){
    // Do something with the error
}
```

You can read more about adding data to firestore [here](https://firebase.google.com/docs/firestore/manage-data/add-data)

### Reading data from firestore

There are 2 ways to read data from firestore
- Read once
- Listen for updates

You need to select the appropriate method to read data depending on your use case.

Let's say you want to get the username of the user. Since the username doesn't keep updating regularly you only need to read it once from the database and store it somewhere in memory(a variable). 

To read data once:
```dart
final db = FirebaseFirestore.instance;
final uid = await FirebaseAuth.instance.currentUser.uid;

final userInfo = await db.collection("users").doc(uid).get().data() as Map<String, dynamic>;

final username = userInfo["username"];
```

To read more on how to get data once see [this](https://firebase.google.com/docs/firestore/query-data/get-data)

The documentation uses the `.then()` methods to deal with `async` codes which is perfectly fine to do. You can also use `async-await` as I do in the module.

Now our chat application needs to be realtime i.e, if a user sends a message then it gets added to firestore. This message should also need to be updated in the app of other users as soon as possible. To accomplish we need to listen for changes in the database in our app.

Let's say our chat messages are stored in a collection called `chat` and each document in the collection represents one message.

```dart
final db = FirebaseFirestore.instance;

final chatStream = db.collection("chat").snapshots();
```

As you can tell we get a `Stream`. This stream can be used to build our chat screen using the `StreamBuilder` widget.

```dart
final db = FirebaseFirestore.instance;

final chatStream = db.collection("chat").snapshots();

Widget chatMessages() {
    return StreamBuilder<QuerySnapshot>(
        stream: chatStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            // Do stuff with your snapshot
        }
    )
}
```

The snapshot has many methods and properties but we are concerned about getting the documents in the collection.

```dart
final chatDocs = snapshot.data!.docs;// This is a List of documents
//To access the data of a specific document say the first one
final firstDocData = chatDocs[0].data() as Map<String, dynamic>;
```

To read more on listening for updates: [Docs](https://firebase.google.com/docs/firestore/query-data/listen)

### Querying Data

You might want to get a specific document from firestore instead of an entire collection. To do this you need to query firestore.

Fortunately the documentation does a much better job at explaining than me so here you go: [Docs](https://firebase.google.com/docs/firestore/query-data/queries)

You need to query data wherever possible to get the least amount of docs as possible onto your app. Say a collection has a million documents with 100kB data each. This would mean that that your app has to download 100GB when you just want to get a single document. 

Another issue with getting the entire collection is that you give the app unnessary data along with the useful data. Let's assume that a users collection has documents corresponding to each user and has the password of the user in the document. If you fetch the entire collection then that means the app has access to every account in your database.
