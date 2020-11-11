#!/bin/sh

echo "Generating pro file..."
qmake -project .

echo "Add widgets..."
echo "QT += widgets" >>  02_simple_gui.pro

echo "Configure..."
qmake

echo "Build!"
make