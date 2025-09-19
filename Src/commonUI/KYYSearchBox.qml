import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: searchBoxRoot
    width: 300
    height: 35
    color: "#2d2d37"
    radius: 20
    
    property string placeholderText: "搜索音乐、歌手、歌词、用户"
    
    Row {
        anchors.fill: parent
        anchors.margins: 8
        spacing: 10
        
        Image {
            id: searchIcon
            width: 20
            height: 20
            source: "qrc:/img/Resources/title/search.png"
            fillMode: Image.PreserveAspectFit
            anchors.verticalCenter: parent.verticalCenter
        }
        
        TextField {
            id: searchInput
            width: parent.width - searchIcon.width - 20
            height: parent.height
            placeholderText: searchBoxRoot.placeholderText
            placeholderTextColor: "#a1a1a3"
            color: "white"
            font.pixelSize: 14
            background: Rectangle {
                color: "transparent"
            }
            
            onAccepted: {
                console.log("搜索:", text)
            }
        }
    }
}