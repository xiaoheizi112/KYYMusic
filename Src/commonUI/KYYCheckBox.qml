import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: checkBoxRoot
    width: 20
    height: 20
    color: checked ? "#4a9eff" : "transparent"
    radius: 3
    border.color: checked ? "#4a9eff" : "#a1a1a3"
    border.width: 2
    
    property bool checked: false
    signal clicked()
    
    Image {
        id: checkIcon
        anchors.centerIn: parent
        width: 12
        height: 12
        source: "qrc:/img/Resources/mianPopups/clear.png"
        fillMode: Image.PreserveAspectFit
        visible: checkBoxRoot.checked
    }
    
    MouseArea {
        anchors.fill: parent
        onClicked: {
            checkBoxRoot.checked = !checkBoxRoot.checked
            checkBoxRoot.clicked()
        }
    }
}