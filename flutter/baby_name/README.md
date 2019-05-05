# Codelab: Firebase for Flutter

Sample project to learn basics of Firebase for Flutter apps.

## Outcomes
* Fields in a Widget subclass are always marked "final".
* Widget build is rerun every time setState is called (stateful widgets)
* To set top padding: const EdgeInsets.only(top: 20.0)
* dynamic keyword scused to represent dynamic type Map<String, dynamic>
* To set symmetric padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
* BoxDecoration can be used inside Container. BoxDecoration have circular border
* To open Flutter app in xcode open ios/Runner.xcworkspace
* Stream builder can be used to fetch firebase cloud collections
* LinearProgressIndicator will show progress in the screen during stream fetching
* Cloud Firestone may cause race condition. To prevent race conditions we should use Transactions
* Dart or Flutter have async and await keywords
* Note: There is another way to solve this problem without using a transaction. In general terms, you would use a stream containing each individual vote. Each vote would be represented by the number 1. The current displayed value for votes would then be the sum of the values in the stream. In Firebase, you could (for example) use a collection to hold the votes and an aggregation query to sum them.
* Firestone base on NoSql and its non relational
* https://www.youtube.com/watch?v=v_hR4K4auoQ&feature=youtu.be
* https://hackernoon.com/whats-revolutionary-about-flutter-946915b09514

<p align="middle">
  <img src="/flutter/baby_name/screenshots/ss1.png" width="150" />
</p>

Components: StreamBuilder, Firestore, ValueKey, ListTile, BorderRadius, BoxDecoration, Border, DocumentReference
