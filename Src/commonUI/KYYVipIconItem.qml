import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: vipIconRoot
    width: 30
    height: 30
    
    Image {
        id: vipIcon
        anchors.fill: parent
        source: "qrc:/img/Resources/title/vip.png"
        fillMode: Image.PreserveAspectFit
        
        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("VIP功能")
            }
        }
    }
}