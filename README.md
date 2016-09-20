## Presentation for KelasMobile Meetup 3 (2016/09/20)
### Topic : Intro To Firebase Realtime Database

Before you build:
- This example is using Swift 3, so make sure you have XCode 8.
- Make sure you have Cocoapod installed.
- run `pod install`
- Download `GoogleService-Info.plist` from your firebase project and place it inside your project.
- Firebase default setting only allow authenticated users to access the database. You can change it so unauthenticated user is allowed.
    - Go to Firebase > Database > Rule and change the content into :
    ```json
    {
        "rules": {
            ".read": true,
            ".write": true
        }
    }
    ```
    - Please **ONLY** do this in development mode. **DO NOT** do this in Production.
