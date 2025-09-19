import QtQuick 2.15
import QtQuick.Controls 2.15
import "../commonUI"

Rectangle {
    id: musicPageRoot
    anchors.fill: parent
    color: "#13131a"
    y: parent.height
    
    // 音乐页面内容
    Column {
        anchors.fill: parent
        anchors.margins: 20
        spacing: 20
        
        // 顶部控制栏
        Row {
            width: parent.width
            height: 50
            
            Image {
                id: backButton
                width: 30
                height: 30
                source: "qrc:/img/Resources/title/arrow.png"
                fillMode: Image.PreserveAspectFit
                anchors.verticalCenter: parent.verticalCenter
                
                MouseArea {
                    anchors.fill: parent
                    onClicked: musicPageRoot.y = parent.height
                }
            }
            
            Text {
                text: "正在播放"
                color: "white"
                font.pixelSize: 18
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: backButton.right
                anchors.leftMargin: 10
            }
        }
        
        // 主要内容区域
        Row {
            width: parent.width
            height: parent.height - 100
            spacing: 20
            
            // 左侧专辑封面
            Rectangle {
                width: parent.width * 0.4
                height: parent.height
                color: "#2d2d37"
                radius: 10
                
                Image {
                    anchors.centerIn: parent
                    width: parent.width * 0.8
                    height: parent.height * 0.8
                    source: "qrc:/img/Resources/playMusic/bigRecord.png"
                    fillMode: Image.PreserveAspectFit
                }
            }
            
            // 右侧歌词区域
            Rectangle {
                width: parent.width * 0.6 - 20
                height: parent.height
                color: "#2d2d37"
                radius: 10
                
                Text {
                    anchors.centerIn: parent
                    text: "歌词内容\n将在这里显示"
                    color: "white"
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignHCenter
                }
            }
        }
    }
    
    function openMusicPage() {
        musicPageRoot.y = 0
    }
}