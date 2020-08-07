# Mobile Code Challenge Flutter Solution

[![Build and Test](https://github.com/MichaelKMalak/mobile-code-challenge-solution-flutter/workflows/Build%20and%20Test/badge.svg)](https://github.com/MichaelKMalak/mobile-code-challenge-solution-flutter/actions?query=workflow%3A%22Build+and+Test%22) <img src="https://img.shields.io/badge/made%20with-dart-blue.svg" alt="made with dart">

This is a solution to the mobile code challenge by [gemography](https://www.gemography.com/). 

## Repository branches
* dev
    * The current tip-of-tree, absolute latest cutting edge build. 
* master
    * The latest developed functional features.

## About this project
The task is to implement a small app that will list the most starred Github repos that were created in the last 30 days by fetching the sorted JSON data directly from the Github API.

## Screenshot
<img src="https://github.com/MichaelKMalak/mobile-code-challenge-solution-flutter/blob/master/screenshots/MVP_1.png" width="350" />

### What has implemented
The [basic features](https://github.com/gemography/mobile-coding-challenge) that are fulfilled include:
 
1. List the most starred Github repos that were created in the last 30 days.
2. View One repository per row.
3. Repo details include
    * Repository name
    * Repository description 
    * Numbers of stars for the repo. 
    * Username and avatar of the owner. 

Additional Features
1. Keep scrolling and new results should appear (pagination)
2. Pull to refresh

### An alternative way to view issues

You can check the [milestones](https://github.com/MichaelKMalak/mobile-code-challenge-solution-flutter/milestones) or the [project where issues' statuses are tracked](https://github.com/MichaelKMalak/mobile-code-challenge-solution-flutter/projects/1).

## Folder Structure
```bash
.
├── core
│   ├── constants
│   ├── models
│   ├── providers
│   └── view_models
└── ui
    ├── utils
    ├── views
    └── widgets
```

## Folder Structure explanation
The lib folder is divided into two folders. Core and ui. Core contains all the files associated with the logic. ui contains all the files associated with the ui. 

* core
    * constants 
      * Holds app constants and enums.
    * models
      * Contains all the plain data models.
    * providers
      * Contains the classes that extend ChangeProvider that will reserve the state of the app and handle actual business logic.
    * view_models
      * contains a view model for each view which will act as an interface between a view and providers.

* ui
    * utils
      * Contains functions or constants that are used in multiple other UI files.
    * views
      * Contains the main app screens.
    * widgets
      * Contains widget files that are too big to keep in the view files. 
      * Usually contains shared widgets that are classes extending stateless widgets.

## High Level Architecture Overview
* Views
    * Each view will have its own view_model that extends the ChangeNotifier.
    * Notify listeners for a view will only be called when the view's state changes.
    * Most of the views require their own view_model, they need to have a root widget Provider and a child Consumer that takes a build method. I added a BaseView that is generic that will do all this for us. 

* View Model
    * Each view_model has only 2 states; Idle and Busy. 
    * Any other piece of UI contained in a view, that requires logic and state (UI updates) will have its own view_model associated with it. This way the main view only paints when the main view state changes.
    * view_models will ONLY request data from providers and reduce state from that data.
    * We have a state property that tells us what UI layout to show in the view and when it's updated we want to call notifyListeners so I moved that into a BaseModel. It contains all the state related code.
 
* Providers
    * Providers will NOT be passed in through app level global provider, unless it's required by more than 1 view in the app architecture (e.g. Users information).
    * Providers will perform all the actual work. Api class will request and serialize data. 

* Relationship between BaseView and view_model
    * This architecture setup should easily support calling functions when a new view is shown without having to convert everything to a stateful widget. To achieve this, the BaseView is converted into a stateful widget to use the onInit to pass the view_model back to use in a callback function that we can execute on. This will store the view_model locally in the state and in the initState call we'll check if we have a callback.

## Adding another model
- Create a `<YOUR_MODEL>.dart` under `core/models/<YOUR_MODEL>/<YOUR_MODEL>.dart`
- Add your own custom getter values.
- Add a part file. Ex: `<YOUR_MODEL>.g.dart` above the class
- If it's a serializable model, add `<YOUR_MODEL>` to the list in `@SerializersFor` class constructor found under `core/models/serializers.dart`
- Run `flutter packages pub run build_runner build --delete-conflicting-outputs` to build your new model
- Add a unit test for a model at `test/models/<YOUR_MODEL>.dart`

## Notes
1. The api key is publicly available, so I didn't setup an env_secret for it.

## What could be improved?
1. More Unit testing.
2. Monitor internet connectivity.
3. Cache repositories.
4. View more repository details per row. (e.g. languages)
5. Filter the repositories.
6. Add some repositories to favorite list.

## Plugins used ##
  - intl: ^0.16.1 
  - provider: ^4.3.1
  - pedantic: ^1.9.0
  - dio: ^3.0.9
  - built_value: ^7.1.0
  - built_collection: ^4.3.2
  - loadmore: ^1.0.4
  
## How to run ##
  - Run `flutter channel` and make sure you are on flutter's *stable channel*.
  - Run `flutter packages get` to download pubspec dependencies.
  - Run `flutter clean` for most of first run errors you may face.
  - Run `flutter test` to execute tests.
  - Run `flutter run` to try it live on running emulator or usb connected device.
  - You can target a specific device to run by run `flutter devices` and getting the id and running `flutter run -d <device_id>`.
  - Run `flutter build apk` to generate APK file.
  - Run `flutter build ios` to package iOS app.
  