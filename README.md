<div align="center">
  <h1>My Readings with Flutter on the Web</h1>
  <p align="center">
  <a href="https://dart.dev/"><img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white"></a>
  <a href="https://flutter.dev/"><img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white"></a>
  <a href="https://www.apache.org/licenses/LICENSE-2.0.html"><img src="https://img.shields.io/badge/licence-Apache%202.0-yellow?style=for-the-badge&"></a>
  </p>
</div>

<img src="screenshots/homepage.png"/>

The purpose of this application is to create a dashboard where you can share the books you have read, future books, and track the progress of those being read.

 The application currently allows you to view books that have been saved in a [Notion](https://www.notion.so/) database and shows them on a web page, so it does not allow books to be added, edited or deleted. 

It uses a [CloudFlare Worker](https://workers.cloudflare.com/) to do this since Notion does not allow its API to be called directly from a Web page.

## 🧬 Project Structure

### 📚 Notion Database

### ⚙️ CloudFlare Worker

### 🚀 Run Project

To run the project you have to pass some environment variables as described here: [How to Store API Keys in Flutter: --dart-define vs .env files](https://codewithandrea.com/articles/flutter-api-keys-dart-define-env-files/), in my case I opted for passing the key using `--dart-define` as it is easily integrated with CI/CD tools. This can be done in two ways:

* pass individual variables to the build command with `--dart-define MY_VARIABLE=value`, a choice that is later used in Netlify to create the release build
* pass a file with the variables with `--dart-define-from-file=api-keys.json`, a more convenient choice when developing locally

In the first case the command is:

```bash
flutter run --dart-define MY_VARIABLE=value
```

In the second case, on the other hand, you have to go and create a file called `api-keys.json` to put in the root of the project, with this content:

```json
{
  "MY_VARIABLE": "value"
}
```

and then pass it like this:

```bash
flutter run --dart-define-from-file=api-keys.json
```

Within the app you can then take the reference to the environment variable in this way:

```dart
const myEnvironmentValue = String.fromEnvironment('MY_VARIABLE');
```

## 💎 Contributing

If you have any idea, feel free to fork it and submit your changes back to me.

## 📃 License

```
Copyright 2023 Alberto Bonacina

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```