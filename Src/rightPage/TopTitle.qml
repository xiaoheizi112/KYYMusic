import QtQuick 2.15
import QtQuick.Controls 2.15
import "../commonUI"

Rectangle {
    id: topTitleRoot
    color: "#1a1a21"
    height: 60
    
    // 搜索框
    KYYSearchBox {
        id: searchBox
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 20
        width: 300
        height: 35
    }
    
    // 用户区域
    Row {
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.verticalCenter: parent.verticalCenter
        spacing: 10
        
        KYYVipIconItem {
            id: vipIcon
            width: 30
            height: 30
        }
        
        Image {
            id: userAvatar
            width: 35
            height: 35
            source: "qrc:/img/Resources/title/user.png"
            fillMode: Image.PreserveAspectFit
            
            MouseArea {
                anchors.fill: parent
                onClicked: BasicConfig.openLoginPopup()
            }
        }
        
        Image {
            id: settingIcon
            width: 25
            height: 25
            source: "qrc:/img/Resources/title/setting.png"
            fillMode: Image.PreserveAspectFit
        }
    }
}