import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: colorAdjustWindowRoot
    width: 400
    height: 300
    color: "#2d2d37"
    radius: 10
    opacity: 0.95
    visible: false
    
    Column {
        anchors.centerIn: parent
        spacing: 20
        width: parent.width - 40
        
        Text {
            text: "颜色选择器"
            color: "white"
            font.pixelSize: 18
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }
        
        KYYColorSelector {
            id: colorSelector
            width: parent.width
            height: 200
        }
        
        Row {
            spacing: 10
            anchors.horizontalCenter: parent.horizontalCenter
            
            Rectangle {
                width: 80
                height: 35
                color: "#4a9eff"
                radius: 5
                
                Text {
                    text: "确定"
                    color: "white"
                    font.pixelSize: 14
                    anchors.centerIn: parent
                }
                
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        console.log("颜色选择完成")
                        BasicConfig.closeColorSelectPopup()
                    }
                }
            }
            
            Rectangle {
                width: 80
                height: 35
                color: "#555"
                radius: 5
                
                Text {
                    text: "取消"
                    color: "white"
                    font.pixelSize: 14
                    anchors.centerIn: parent
                }
                
                MouseArea {
                    anchors.fill: parent
                    onClicked: BasicConfig.closeColorSelectPopup()
                }
            }
        }
    }
}