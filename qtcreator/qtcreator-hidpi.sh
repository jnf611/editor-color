#!/bin/bash
# On hidpi screens, programs ui may appear smaller
# To correct this, pixel fixed size element could be scaled, for example
# by a factor 2, like it is possible in Cinnamon parameters
# The program may also be stuarted with equivalent parameters as below
# for qtcreator
#
# TODO:
# - Change path to qtcreator

export QT_SCALE_FACTOR=1
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export QT_SCREEN_SCALE_FACTORS=2
/home/julien/tools/softs/Qt-3.0.2/Tools/QtCreator/bin/qtcreator
