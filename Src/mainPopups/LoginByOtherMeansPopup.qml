import QtQuick 2.15
import QtQuick.Controls 2.15
import "../commonUI"

Rectangle {
    id: loginByOtherMeansPopupRoot
    width: 400
    height: 300
    color: "#2d2d37"
    radius: 10
    opacity: 0.95
    
    Column {
        anchors.centerIn: parent
        spacing: 20
        width: parent.width - 40
        
        Text {
            text: "手机号登录"
            color: "white"
            font.pixelSize: 20
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }
        
        KYYShotCutTextField {
            id: phoneInput
            width: parent.width
            height: 40
            placeholderText: "请输入手机号"
        }
        
        KYYShotCutTextField {
            id: passwordInput
            width: parent.width
            height: 40
            placeholderText: "请输入密码"
            echoMode: TextInput.Password
        }
        
        Row {
            spacing: 10
            anchors.horizontalCenter: parent.horizontalCenter
            
            KYYCheckBox {
                id: rememberCheckBox
                width: 20
                height: 20
            }
            
            Text {
                text: "自动登录"
                color: "#a1a1a3"
                font.pixelSize: 14
                anchors.verticalCenter: parent.verticalCenter
            }
        }
        
        Rectangle {
            width: parent.width
            height: 40
            color: "#4a9eff"
            radius: 20
            
            Text {
                text: "登录"
                color: "white"
                font.pixelSize: 16
                font.bold: true
                anchors.centerIn: parent
            }
            
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("登录按钮被点击")
                    // 这里添加登录逻辑
                }
            }
        }
        
        Text {
            text: "返回扫码登录"
            color: "#4a9eff"
            font.pixelSize: 14
            anchors.horizontalCenter: parent.horizontalCenter
            
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    BasicConfig.closeLoginByOtherMeansPopup()
                    BasicConfig.openLoginPopup()
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
            onClicked: BasicConfig.closeLoginByOtherMeansPopup()
        }
    }
}