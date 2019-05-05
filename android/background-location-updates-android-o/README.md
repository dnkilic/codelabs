# Codelab: Background Location Updates in Android "O"

Sample project to learn background location updates in Android O

## Outcomes
* To request location we need to have GoogleAPIClient, LocationRequest and PendingIntent.
* We can listen location updates inside an IntentService.
* When app is in background location update interval is limited.
* Your app will receive location updates only a few times each hour (the location update interval may be adjusted in the future based on system impact and feedback from developers).
* Android "O" background limits apply to all apps running on "O" devices, regardless of targetSdkVersion.
* Android "O" required that all notifications go through a channel.
* When we set target SDK to Android O; App will no longer receive location updates (remember we are using IntentService)

<p align="middle">
  <img src="/android/background-location-updates-android-o/screenshots/ss1.png" width="150" />
</p>
