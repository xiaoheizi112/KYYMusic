import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

import "./Src/leftPage"
import "./Src/rightPage"
import "./Src/playMusic"
import "./Src/commonUI"
import "./Src/basic"
import "./Src/mainPopups"
import "./Src/js/MainEvents.js" as MainEvents

KYYWindow{
    id:window
    visible: true
    width: 930//整体*0.7
    height: 653
    title: "KYYCloudMusic"
    bgColor: BasicConfig.mainBgColor
    Connections{
        target:BasicConfig
        function onOpenLoginPopup(){loginPopup.open()}
        function onOpenLoginByOtherMeansPopup(){loginByOtherMeansPopup.open()}
        function onOpenColorSelectPopup(){colorAdjustWindow.open()}
        function onCloseLoginPopup(){loginPopup.close()}
        function onCloseLoginByOtherMeansPopup(){loginByOtherMeansPopup.close()}
        function onCloseColorSelectPopup(){colorAdjustWindow.close()}
    }

    //用于坐标映射到windows
    Item {
        id: positionMapItem
        anchors.fill: parent
    }

    //扫码登录弹窗
    LoginPopup{
        id:loginPopup
        anchors.centerIn: parent
    }

    //其他方式登录的弹窗
    LoginByOtherMeansPopup{
        id:loginByOtherMeansPopup
        anchors.centerIn: parent
    }


    //可拖动颜色选择弹窗
    KYYColorAdjustWindow{
        id:colorAdjustWindow
        MouseArea{
            anchors.top:parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            height: 50 * BasicConfig.hScale
            anchors.rightMargin: 100 * BasicConfig.wScale
            property point clickedPos: "0,0"
            onPressed: clickedPos = Qt.point(mouse.x, mouse.y)
            onPositionChanged: {
                // MainEvents.colorAdjustMoveEvent(mouseX,mouseY)
                var delta = Qt.point(mouse.x - clickedPos.x, mouse.y - clickedPos.y)
                colorAdjustWindow.x += delta.x
                colorAdjustWindow.y += delta.y
                // window.positionChanged(mouseX,mouseY)
            }
        }
    }

    //左边页面
    LeftPage{
        id:leftPage
        width: 178.5
        anchors.left: parent.left
        anchors.top:parent.top
        anchors.bottom: parent.bottom
        color:BasicConfig.leftBgColor
    }

    //右侧页面
    RightPage{
        //color:"black"
        anchors.left: leftPage.right
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
    }
    //底部
    PlayMusic{
        onOpenMusicPage:{
            musicPage.y = 0
        }
    }
    //音乐界面
    MusicPage{
        id:musicPage
    }











}