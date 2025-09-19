import QtQuick 2.15
import QtQuick.Controls 2.15
import "../commonUI"

Rectangle {
    id: loginPopupRoot
    width: 350
    height: 400
    color: "#2d2d37"
    radius: 10
    opacity: 0.95
    
    Column {
        anchors.centerIn: parent
        spacing: 20
        
        Text {
            text: "扫码登录"
            color: "white"
            font.pixelSize: 20
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }
        
        Rectangle {
            width: 200
            height: 200
            color: "white"
            radius: 10
            anchors.horizontalCenter: parent.horizontalCenter
            
            Image {
                anchors.fill: parent
                anchors.margins: 20
                source: "qrc:/img/Resources/mianPopups/qrcode.jpg"
                fillMode: Image.PreserveAspectFit
            }
        }
        
        Text {
            text: "使用网易云音乐APP扫码登录"
            color: "#a1a1a3"
            font.pixelSize: 14
            anchors.horizontalCenter: parent.horizontalCenter
        }
        
        Row {
            spacing: 20
            anchors.horizontalCenter: parent.horizontalCenter
            
            Image {
                width: 40
                height: 40
                source: "qrc:/img/Resources/mianPopups/wx_normal.png"
                fillMode: Image.PreserveAspectFit
                
                MouseArea {
                    anchors.fill: parent
                    onEntered: parent.source = "qrc:/img/Resources/mianPopups/wx_hover.png"
                    onExited: parent.source = "qrc:/img/Resources/mianPopups/wx_normal.png"
                }
            }
            
            Image {
                width: 40
                height: 40
                source: "qrc:/img/Resources/mianPopups/QQ_normal.png"
                fillMode: Image.PreserveAspectFit
                
                MouseArea {
                    anchors.fill: parent
                    onEntered: parent.source = "qrc:/img/Resources/mianPopups/QQ_hover.png"
                    onExited: parent.source = "qrc:/img/Resources/mianPopups/QQ_normal.png"
                }
            }
            
            Image {
                width: 40
                height: 40
                source: "qrc:/img/Resources/mianPopups/sina_normal.png"
                fillMode: Image.PreserveAspectFit
                
                MouseArea {
                    anchors.fill: parent
                    onEntered: parent.source = "qrc:/img/Resources/mianPopups/sina_hover.png"
                    onExited: parent.source = "qrc:/img/Resources/mianPopups/sina_normal.png"
                }
            }
        }
        
        Text {
            text: "其他登录方式"
            color: "#4a9eff"
            font.pixelSize: 14
            anchors.horizontalCenter: parent.horizontalCenter
            
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    BasicConfig.closeLoginPopup()
                    BasicConfig.openLoginByOtherMeansPopup()
                }
            }
        }
    }
    
    // 关闭按钮
    Image {
        id: closeButton
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.margins: 10
        width: 20
        height: 20
        source: "qrc:/img/Resources/title/close.png"
        fillMode: Image.PreserveAspectFit
        
        MouseArea {
            anchors.fill: parent
            onClicked: BasicConfig.closeLoginPopup()
        }
    }
}