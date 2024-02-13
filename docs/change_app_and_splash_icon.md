# Change App and Splash Icon

>[!NOTE] 
> Please make a copy of the project before following the instructions below. Just incase 
> the commands doesn't work as intended.

## Change App Logo

To change the **App Logo** of the app, follow the steps below for all the available platforms (Ex. iOS, Android, etc).

* Go to **`app-assets/Logo/`** directory inside the project.
* Change the **logo-blue.png** to that of your choice. Please make sure the name remain the same.
* You can import your custom image and rename it to **`logo-blue.png`**.
* Go to **`pubspec.yaml`** and make sure this portion of code is available :
    ```yaml
    flutter_launcher_icons:
      ios: true
      android: true
      min_sdk_android: 21
      image_path: app-assets/Logo/logo-blue.png
    ```
* Then run this command in your terminal to update the **App Logo** of the app.
   ```terminal
    flutter pub get
    dart run flutter_launcher_icons
    ```

## Change Splash Screen

To change the **App Splash Screen** of the app, follow the steps below for all the available platforms (Ex. iOS, Android, etc).

* Go to **`app-assets/Logo/`** directory inside the project.
* Change the **`logo-fg.png`** to update the foreground icon of the **Splash Screen** of your choice. Please make sure the name remain the same.
* And change the **`logo-bg.png`** to update the background image of the **Splash Screen** icon of your choice. Please make sure the name remain the same.
* Then go to **`flutter_native_splash.yaml`** and make sure this portion of code is available :
    ```yaml
    flutter_native_splash:
        color: "#0A65CC"
        background_image: "app-assets/Logo/logo-bg.png"
        image: "app-assets/Logo/logo-fg.png"
    ```
* Then run this command in your terminal to update the **App Splash Screen** of the app.
   ```terminal
    flutter pub get
    dart run flutter_native_splash:create
    ```

