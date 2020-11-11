Qt5 Tutorials
============

Some introductory tutorials/snippets on Qt5 based on [this](http://zetcode.com/gui/qt5). Examples have been tried and tested on GNU/Linux with Qt 5.15.1.


# Table of contents
1. [Installation](#installation)


## Installation <a name="installation"></a>
You can get prebuilt binaries from your package manager (apt, pacman, etc...), but you will probably not have latest version. Building from source is not painful and can be done with following steps:
1. Download source tarball from [here](https://download.qt.io/official_releases/qt/). E.g. for 5.15.1 link is:
https://download.qt.io/official_releases/qt/5.15/5.15.1/single/

2. Installation goes the usual way:
    * `tar -xvf qt-everywhere-src-5.15.1.tar.xz`
    * `cd` into it, then: `./configure -prefix /usr/local/qt5`
    * `make` (Be patient. This will take several hours to complete!)
    * `sudo make install`
    * Add it to `PATH` on you shell startup file (e.g. `.bashrc`), and source it:
    `PATH=/usr/local/qt5/bin:$PATH`. Make sure that Qt path *prepends* `PATH` variable,
    otherwise you might end up using wrong Qt version!

