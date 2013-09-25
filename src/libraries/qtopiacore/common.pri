CONFIG+=force_pic
!enable_rtti:QTOPIA_ADD_CXXFLAGS+=$$MKSPEC.CXXFLAGS_DISABLE_RTTI
QT_DEPOT=$$path(/qtopiacore/qt,existing)
FEATURES=
!isEmpty(DEVICE_CONFIG_PATH):exists($$DEVICE_CONFIG_PATH/features/qt_patch):FEATURES=$$DEVICE_CONFIG_PATH/features/qt_patch:
FEATURES=$$FEATURES$$path(/src/build/qt_patch,project)
QT_PATCH_ENV=\
    PATH=$$QPEDIR/src/build/bin/pkgconfig:$PATH\
    MAKEFILE=Makefile\
    QMAKEFEATURES=$$shellQuote($$FEATURES)\
    QMAKEPATH=$$shellQuote($$QT_DEPOT)\
    QPE_CONFIG=$$shellQuote($$CONFIG)\
    QTOPIACORE_CONFIG=$$shellQuote(target)\
    QPEDIR=$$shellQuote($$QPEDIR)\
    SDKROOT=$$shellQuote($$SDKROOT)\
    ADD_CFLAGS=$$shellQuote($$QTOPIA_ADD_CFLAGS)\
    ADD_CXXFLAGS=$$shellQuote($$QTOPIA_ADD_CXXFLAGS)
QTDIR=$$path(/qtopiacore/target,generated)
QTOPIACORE=$$path(.,project)
CONFIGURE_ARGS=$$QTE_CONFIG
CONFIGURE=$$QT_DEPOT/configure
