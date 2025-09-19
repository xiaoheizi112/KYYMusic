QT += quick widgets

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp

RESOURCES += qml.qrc \
js.qrc \
    res.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    Src/LeftPage/LeftPage.qml \
    Src/PlayMusic/PlayMusic.qml \
    Src/RightPage/RightPage.qml \
    Src/basic/qmldir \
    Src/js/FragmentShaders.js \
    Src/js/MainEvents.js \
    Src/js/SingListSquareEvents.js \
    Src/js/TheChartsFunctions.js \
    Src/leftPage/LeftPage.qml \
    Src/rightPage/StackPages/cloudMusicCherryPick/CherryPick.qml \
    Src/rightPage/StackPages/cloudMusicCherryPick/Singers.qml \
    Src/rightPage/StackPages/cloudMusicCherryPick/SongListSquare.qml \
    Src/rightPage/StackPages/cloudMusicCherryPick/TheCharts.qml \
    Src/rightPage/StackPages/cloudMusicCherryPick/Vip.qml