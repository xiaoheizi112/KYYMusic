import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: rightPageRoot
    Rectangle {
        anchors.fill: parent
        color: "#13131a"
        
        // 顶部标题栏
        TopTitle {
            id: topTitle
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            height: 60
        }
        
        // 内容区域
        CloudMusicCherryPick {
            id: cherryPick
            anchors.top: topTitle.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
        }
    }
}