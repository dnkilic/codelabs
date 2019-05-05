# Codelab: Background Location Updates in Android "O"

Sample project to learn background location updates in Android O

## Outcomes
* To request location we need to have GoogleAPIClient, LocationRequest and PendingIntent.
* We can listen location updates inside an IntentService through PendingIntent.
* When app is in background location update interval is limited. Foreground apps are not affected by these limits.
* Your app will receive location updates only a few times each hour (the location update interval may be adjusted in the future based on system impact and feedback from developers).
* Android "O" background limits apply to all apps running on "O" devices, *regardless of targetSdkVersion*.
* Android "O" required that all notifications go through a channel.
* When we set target SDK to Android O; App will no longer receive location updates (remember we are using IntentService). Apps targeting Android O are subject to limits on services started in background 

<p align="middle">
  <img src="/android/background-location-updates-android-o/screenshots/ss1.png" width="150" />
</p>

## Further Reading
[Android 0 Limitations](https://developer.android.com/preview/features/background.html)

## Some Tips
* Use batched location updates using LocationRequest#setMaxWaitTime. With this API, locations may be provided more frequently than the non-batched API.
* While your app is in the background, it may continue to receive location updates passively if another app in the foreground requests location updates. You can receive some of these updates by using LocationRequest#setFastestInterval with a small interval, such as 5 min.
* 