# defaultbrowser

## About

Derived from [defaultbrowser](https://github.com/kerma/defaultbrowser) created by [kerma](https://github.com/kerma)

Command line tool for setting the default browser (HTTP handler) in macOS X.

## Install

Build it:

```sh
make
```

Install it into your executable path:

```sh
make install
```

## Usage

Set the default browser with, e.g.:

```sh
defaultbrowser chrome
```

Running `defaultbrowser` without arguments lists available HTTP handlers and shows the current setting.

## How does it work?

The code uses the [macOS Launch Services API](https://developer.apple.com/documentation/coreservices/launch_services).

## LICENSE

[MIT](LICENSE)

