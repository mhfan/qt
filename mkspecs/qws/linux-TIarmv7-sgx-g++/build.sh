#!/bin/bash
 ################################################################
 # $ID: build.sh       Wed, 28 Aug 2013 16:55:17 +0800  mhfan $ #
 #                                                              #
 # Description:                                                 #
 #                                                              #
 # Maintainer:  ·¶Ã;Ô(MeiHui FAN)  <mhfan@ustc.edu>            #
 #                                                              #
 # CopyLeft (c)  2013  M.H.Fan                                  #
 #   All rights reserved.                                       #
 #                                                              #
 # This file is free software;                                  #
 #   you are free to modify and/or redistribute it  	        #
 #   under the terms of the GNU General Public Licence (GPL).   #
 #                                                              #
 # Last modified: Sat, 09 Nov 2013 22:42:14 +0800      by mhfan #
 ################################################################

# livemem plugin

ROOTFS=/home/mhfan/devel/am335x/ti-sdk-evm/board-support/rootfs

./configure --prefix=/opt/QtE-armhf \
    -embedded arm -opensource -confirm-license \
    -nomake tests -nomake docs -nomake examples -nomake demos \
    -reduce-relocations -fast -optimized-qmake -depths 16,24,32 \
    -system-libmng -system-sqlite -separate-debug-info -exceptions \
    -platform qws/linux-x86-g++ -xplatform qws/linux-TIarmv7-sgx-g++ \
    -qt-mouse-tslib -qt-mouse-linuxtp -qt-mouse-linuxinput -plugin-mouse-pc \
    -qt-kbd-linuxinput -qt-gfx-linuxfb -opengl es2 -plugin-gfx-powervr \
    -qt-gfx-multiscreen -plugin-gfx-transformed -plugin-gfx-vnc \
    -no-gtkstyle -no-qt3support -no-cups -no-largefile -no-accessibility \
    -no-webkit -no-pch -no-scripttools -no-declarative-debug \
    -D QT_NO_QWS_CURSOR -D QT_QWS_CLIENTBLIT \
    #-R /usr/local/lib -no-rpath -v #-qconfig local \
    #-I $ROOTFS/usr/include -L $ROOTFS/usr/lib/arm-linux-gnueabihf \
    #-embedded x86_64 -qvfb -qt-gfx-qvfb -qt-kbd-qvfb -qt-mouse-qvfb #-qpa \

#make -j4 && sudo make install && sudo make install INSTALL_ROOT=$ROOTFS

 # vim:sts=4:ts=8:
