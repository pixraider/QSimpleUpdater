## QSimpleUpdater

QSimpleUpdater is an implementation of an auto-updating system to be used with Qt projects. It can check updates silent or not, get changelog, download updates to ```[app_dir_path]/updates```.

Current state

```
__update loader______|______file updater__
      + mac          |        + mac
      + nix          |        - nix
      + win          |        - win
```

QSimpleUpdater is **free and open source [LGPL software](https://www.gnu.org/licenses/lgpl.html)**, which means that you can use it for both open source and proprietary applications.

## How to use

* Copy/create submodule of *QSimpleUpdater* in your "3rd-party" project folder.
```bash
$ git submodule add https://github.com/pixraider/QSimpleUpdater.git
$ git submodule init
$ git submodule update
```
* Include ```qsimpleupdater.pri``` to your target Qt project
```
include($$PWD/third-party/QSimpleUpdater/qsimpleupdater.pri)
```
* Check the example project for details.

## Organize remote hosting with updates

The typical file structure on server side is
```
├── CHANGELOG
├── CURRENT_VERSION
├── mac
│   └── example
├── nix
│   └── example
├── win
    └── example.exe
```

CURRENT_VERSION contains current version of application as a first line and platform & download link devided "||" symbols
```
0.0.2
win || http://[your.host.com]/win/example.exe
mac || http://[your.host.com]/mac/example
nix || http://[your.host.com]/nix/example
```

CHANGELOG is a additional simple text file, you could use it your own way

Be sure all this files available from client machines
