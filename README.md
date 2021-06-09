# Laporin Mobile APP

[![Build Flutter APK](https://github.com/laporin/frontend_app_public/actions/workflows/flutter.yml/badge.svg)](https://github.com/laporin/frontend_app_public/actions/workflows/flutter.yml)

> Google Bangkit Capstone Project B21-CAP0330

## What is this for?

> This app is created for public users to make report for their government

## Selling point?

* Notice the user about similar report in the submission form.
* Grouping similar reports that refer to the same problem.*
* Similarity is decided by images, detail, coordinate and location.*
* Track the report progress timeline.*

> _* = Comming soon_

## What is the unique points?

* Implementing clean code architecture.
* Build automatically every push to the branch master and then create downloadable APK artifact (ongoing).

## Architecture

### Uncle Bob's Clean Architecture Proposal

![image](https://user-images.githubusercontent.com/32485694/121276438-dcfdd780-c8f8-11eb-935a-c003be722b58.png)

Source: [Uncle Bob's Clean Architecture Proposal](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)

### Reso Coder's Flutter Clean Architecture Proposal

![image](https://user-images.githubusercontent.com/32485694/121295393-29f1a600-c919-11eb-8dee-e8303001b834.png)

Source: [Flutter TDD Clean Architecture Course [1] – Explanation & Project Structure by Reso Coder](https://resocoder.com/2019/08/27/flutter-tdd-clean-architecture-course-1-explanation-project-structure/)

## Dependencies

* Flutter 2.0.6
* Dart 2.12.3

## How to run

1. Clone this repo `git clone git@github.com:laporin/frontend_app_public.git`.
2. Install the dependencies `flutter put get`.
3. Run the code generation `flutter pub run build_runner build --delete-conflicting-outputs`.
4. Run flutter `flutter run`.

## Build commands

Just build

```
flutter pub run build_runner build --delete-conflicting-outputs
```

Build and watch

```
flutter pub run build_runner watch --delete-conflicting-outputs
```

## Enjoy
