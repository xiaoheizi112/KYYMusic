import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: textFieldRoot
    width: 200
    height: 40
    color: "#222"
    radius: 5
    border.color: "#303037"
    border.width: 1
    
    property alias text: textInput.text
    property alias placeholderText: textInput.placeholderText
    property alias echoMode: textInput.echoMode
    
    TextField {
        id: textInput
        anchors.fill: parent
        anchors.margins: 10
        color: "#d9d9da"
        placeholderTextColor: "#a1a1a3"
        font.pixelSize: 14
        background: Rectangle {
            color: "transparent"
        }
    }
}