# Contributing

First of all, thanks for your interest in contributing to the weather_icons! 🎉

PRs are the preferred way to spike ideas and address issues, if you have time.

## Requirements

In order to contribute you will need to have a few things ready to go:

- [node](https://nodejs.org/en/) for running dev and build scripts
- [flutter](https://flutter.dev) This should be obvious

Node comes with `npm` (package manager), but I prefer to use [yarn](https://yarnpkg.com/en/).

## Setup

Clone the repository

```bash
git clone https://github.com/worldturtlemedia/weather_icons
```

Install the dependencies

```bash
yarn install

# or

npm install
```

Start coding!

## Updating font information

The font file and the `WeatherIcons` class are grabbed, and generated automatically by a couple of node scripts.

The current version is always stored in [.fontversion.json](https://github.com/worldturtlemedia/weather_icons/blob/master/.fontversion.json).

You can run both of the below steps in one go by running:

```bash
yarn sync

# or
npm run sync
```

### Checking & downloading

To check if there is a new version of [Weather Icons](https://github.com/erikflowers/weather-icons/releases) run the command:

```bash
yarn download

# or
npm run download
```

This will compare the current downloaded font version against the latest release, and download + unpack the release.

### Generating new font data

Both [`weather_icons_g.dart`](https://github.com/worldturtlemedia/weather_icons/blob/master/lib/src/weather_icons_g.dart) and [`weather_icons_g_test.dart`](https://github.com/worldturtlemedia/weather_icons/blob/master/test/weather_icons_g_test.dart) are generated by the [`scrape_icons`](https://github.com/worldturtlemedia/weather_icons/blob/master/tool/scrape_icons) script.

To generate a new `WeatherIcons` class you can invoke it like:

```bash
yarn generate

# or
npm run generate
```

**NOTE:** You should **ALWAYS** run the `download` command _before_ running the `generate` command. That way the generated file can have the proper font version.

The generate script scrapes [this page](https://erikflowers.github.io/weather-icons/) and looks for all of the icon names.

### 🧪 Tests

Every new feature should have tests! Find a bug? Write a test!

```bash
yarn test

# or
npm test

# or
flutter test
```

### 💅 Style guides

Style guides are enforced by robots _(I meant flutter format and prettier of course 🤖 )_, so they'll let you know if you screwed something, but most of the time, they'll autofix things for you. Magic right?

Lint and format codebase via npm-script:

```sh
# Lint and autofix using flutter
yarn lint

# Format code with dartfmt
yarn format
```

#### Commit conventions (via commitizen)

In order to create automated release, this library uses `commitizen` to create a standard commit message.

- this is preferred way how to create conventional-changelog valid commits
- if you are in rush and just wanna skip commit message validation just prefix your message with `WIP: something done` ( if you do this please squash your work when you're done with proper commit message so semantic-release can create Changelog and bump version of your library appropriately )

```sh
# invoke commitizen CLI
yarn commit

# or
npm run commit
```

## 🚀 Publishing

> releases are handled by awesome [semantic-release](https://github.com/semantic-release/semantic-release)

Whenever a commit is pushed to the `master` branch, the CI server will validate the commit, then run `semantic-release`.

If `semantic-release` decides that the commit is worthy of a new release it will:

- bump package version and git tag
- push to github master branch + push tags
- bundle the library and add to release

## License

By contributing your code to the weather_icons GitHub Repository, you agree to license your contribution under the MIT license.
