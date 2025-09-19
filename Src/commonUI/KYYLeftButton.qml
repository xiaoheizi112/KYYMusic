import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    property alias text: buttonText.text
    property alias iconSource: buttonIcon.source
    signal buttonClicked()

    id: root
    width: 150
    height: 40

    Rectangle {
        id: background
        anchors.fill: parent
        color: "transparent"
        radius: 5

        Image {
            id: buttonIcon
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.verticalCenter: parent.verticalCenter
            width: 20
            height: 20
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: buttonText
            anchors.left: buttonIcon.right
            anchors.leftMargin: 10
            anchors.verticalCenter: parent.verticalCenter
            color: "#a1a1a3"
            font.family: "微软雅黑 Light"
            font.pixelSize: 14
        }

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onClicked: root.buttonClicked()
            onEntered: {
                background.color = "#2d2d37"
                buttonText.color = "white"
            }
            onExited: {
                background.color = "transparent"
                buttonText.color = "#a1a1a3"
            }
        }
    }
}