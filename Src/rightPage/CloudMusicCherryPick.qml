import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: cherryPickRoot
    color: "#13131a"
    
    // 轮播图区域
    Rectangle {
        id: carouselArea
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: 200
        color: "transparent"
        
        // 轮播图实现
        ListView {
            id: carouselList
            anchors.fill: parent
            anchors.margins: 20
            orientation: ListView.Horizontal
            model: carouselListModel
            spacing: 10
            
            delegate: Rectangle {
                width: 300
                height: 180
                color: "#2d2d37"
                radius: 8
                
                Image {
                    anchors.fill: parent
                    source: modelData
                    fillMode: Image.PreserveAspectCrop
                    
                    Rectangle {
                        anchors.fill: parent
                        gradient: Gradient {
                            GradientStop { position: 0.0; color: "transparent" }
                            GradientStop { position: 1.0; color: "#aa000000" }
                        }
                    }
                }
            }
        }
    }
    
    // 推荐歌单区域
    Column {
        anchors.top: carouselArea.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: 20
        spacing: 20
        
        Text {
            text: "推荐歌单"
            color: "white"
            font.pixelSize: 18
            font.bold: true
        }
        
        Grid {
            columns: 5
            spacing: 15
            
            Repeater {
                model: singSquareListModel
                
                Rectangle {
                    width: 150
                    height: 200
                    color: "#2d2d37"
                    radius: 8
                    
                    Column {
                        anchors.fill: parent
                        anchors.margins: 10
                        spacing: 10
                        
                        Rectangle {
                            width: parent.width
                            height: 130
                            color: "#3d3d47"
                            radius: 5
                        }
                        
                        Text {
                            text: modelData
                            color: "white"
                            font.pixelSize: 14
                            wrapMode: Text.WordWrap
                            maximumLineCount: 2
                            elide: Text.ElideRight
                        }
                    }
                }
            }
        }
    }
}