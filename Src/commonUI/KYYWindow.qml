import QtQuick 2.15
import QtQuick.Controls 2.15

Window {
    id: window
    property alias bgColor: backgroundRect.color
    visible: true
    width: 930
    height: 653
    title: "KYYMusic"
    flags: Qt.Window | Qt.FramelessWindowHint
    color: "transparent"

    Rectangle {
        id: backgroundRect
        anchors.fill: parent
        color: "#13131a"
        radius: 8
    }

    // 标题栏区域
    Rectangle {
        id: titleBar
        width: parent.width
        height: 50
        color: "transparent"
        anchors.top: parent.top

        MouseArea {
            anchors.fill: parent
            property point lastMousePos: Qt.point(0, 0)
            onPressed: {
                lastMousePos = Qt.point(mouse.x, mouse.y)
            }
            onMouseXChanged: {
                var delta = Qt.point(mouse.x - lastMousePos.x, mouse.y - lastMousePos.y)
                window.x += delta.x
                window.y += delta.y
            }
        }
    }
}