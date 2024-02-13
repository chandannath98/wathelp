# Update API Endpoints.

>[!NOTE] 
> Please make a copy of the project before following the instructions below. Just incase 
> the commands doesn't work as intended.

After setting up the backend on your server. For your app to communicate with your setup backend you need to change the url endpoint on your app. </br>
</br>
Go to **`lib/src/domain/server/config/api/api_config.dart`** and change `baseUrl` variable value.
```dart
  static const baseUrl = "https://YOUR_SERVER_DOMAIN/api";
```