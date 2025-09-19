import QtQuick 2.15
import QtQuick.Controls 2.15
import "../commonUI"

Rectangle {
    id: playMusicRoot
    anchors.bottom: parent.bottom
    anchors.left: parent.left
    anchors.right: parent.right
    height: 80
    color: "#1a1a21"
    
    // 左侧播放控制
    Row {
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.verticalCenter: parent.verticalCenter
        spacing: 15
        
        Image {
            id: albumCover
            width: 50
            height: 50
            source: "qrc:/img/Resources/playMusic/smallRecord.png"
            fillMode: Image.PreserveAspectFit
        }
        
        Column {
            spacing: 5
            
            Text {
                text: "歌曲名称"
                color: "white"
                font.pixelSize: 14
            }
            
            Text {
                text: "歌手名称"
                color: "#a1a1a3"
                font.pixelSize: 12
            }
        }
    }
    
    // 中间播放控制
    Row {
        anchors.centerIn: parent
        spacing: 20
        
        Image {
            id: prevButton
            width: 25
            height: 25
            source: "qrc:/img/Resources/playMusic/pre.png"
            fillMode: Image.PreserveAspectFit
        }
        
        Image {
            id: playPauseButton
            width: 35
            height: 35
            source: "qrc:/img/Resources/playMusic/playList.png"
            fillMode: Image.PreserveAspectFit
        }
        
        Image {
            id: nextButton
            width: 25
            height: 25
            source: "qrc:/img/Resources/playMusic/next.png"
            fillMode: Image.PreserveAspectFit
        }
    }
    
    // 右侧功能按钮
    Row {
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.verticalCenter: parent.verticalCenter
        spacing: 15
        
        Image {
            id: volumeButton
            width: 20
            height: 20
            source: "qrc:/img/Resources/playMusic/volumn.png"
            fillMode: Image.PreserveAspectFit
        }
        
        Image {
            id: likeButton
            width: 20
            height: 20
            source: "qrc:/img/Resources/playMusic/like.png"
            fillMode: Image.PreserveAspectFit
        }
        
        Image {
            id: shareButton
            width: 20
            height: 20
            source: "qrc:/img/Resources/playMusic/fenxiang.png"
            fillMode: Image.PreserveAspectFit
        }
        
        Image {
            id: playlistButton
            width: 20
            height: 20
            source: "qrc:/img/Resources/playMusic/playList.png"
            fillMode: Image.PreserveAspectFit
            
            MouseArea {
                anchors.fill: parent
                onClicked: musicPage.openMusicPage()
            }
        }
    }
}