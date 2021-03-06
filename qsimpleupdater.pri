QT += core network
greaterThan(QT_MAJOR_VERSION, 4) {
    QT += widgets
}

INCLUDEPATH += $$PWD/src

HEADERS += \
    $$PWD/src/dialogs/download_dialog.h \
    $$PWD/src/dialogs/progress_dialog.h \
    $$PWD/src/qsimpleupdater.h \
    $$PWD/src/launcher/launcher.h

SOURCES +=  \
    $$PWD/src/dialogs/download_dialog.cpp \
    $$PWD/src/dialogs/progress_dialog.cpp \
    $$PWD/src/qsimpleupdater.cpp

win32 {
    SOURCES +=  \
        $$PWD/src/launcher/launcher_win.cpp
}

macx {
    LIBS += -framework CoreFoundation
    LIBS += -framework Cocoa
    LIBS += -framework IOKit
    LIBS += -framework AppKit

    OBJECTIVE_SOURCES +=  \
        $$PWD/src/launcher/launcher_mac.mm
}

unix:!macx {    # other *nix
    SOURCES +=  \
        $$PWD/src/launcher/launcher_nix.cpp
}

FORMS += \
    $$PWD/src/dialogs/download_dialog.ui \
    $$PWD/src/dialogs/progress_dialog.ui

RESOURCES += \
    $$PWD/res/qsu_resources.qrc
