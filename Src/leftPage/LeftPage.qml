import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import "../commonUI"

Item {
    property alias color:rectangle.color
    id:leftPageRoot
    Rectangle{
        id:rectangle
        anchors.fill: parent
        //渐变色
        /*
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#1a1a21" }
            GradientStop { position: 1.0; color: "#13131a" }
        }*/
        //左侧按钮区域
        Column{
            id:leftButtonsColumn
            anchors.top: parent.top
            anchors.topMargin: 80
            anchors.left: parent.left
            anchors.leftMargin: 15
            spacing: 5

            KYYLeftButton{
                text: "发现音乐"
                iconSource: "qrc:/img/Resources/leftBar/datasource.png"
                onButtonClicked: {
                    console.log("发现音乐")
                    BasicConfig.jumpToMainPage()
                }
            }
            KYYLeftButton{
                text: "播客"
                iconSource: "qrc:/img/Resources/leftBar/boke.png"
                onButtonClicked: {
                    console.log("播客")
                    BasicConfig.jumpToPodcastPage()
                }
            }
            KYYLeftButton{
                text: "我的音乐"
                iconSource: "qrc:/img/Resources/leftBar/likeLeft.png"
                onButtonClicked: {
                    console.log("我的音乐")
                    BasicConfig.jumpToLikePage()
                }
            }
            KYYLeftButton{
                text: "最近播放"
                iconSource: "qrc:/img/Resources/leftBar/recent.png"
                onButtonClicked: {
                    console.log("最近播放")
                    BasicConfig.jumpToRecentPage()
                }
            }
            KYYLeftButton{
                text: "我的收藏"
                iconSource: "qrc:/img/Resources/leftBar/likeRight.png"
                onButtonClicked: {
                    console.log("我的收藏")
                }
            }
            KYYLeftButton{
                text: "本地音乐"
                iconSource: "qrc:/img/Resources/leftBar/add.png"
                onButtonClicked: {
                    console.log("本地音乐")
                    BasicConfig.jumpToLocalMusicPage()
                }
            }
            KYYLeftButton{
                text: "下载管理"
                iconSource: "qrc:/img/Resources/leftBar/downLoad.png"
                onButtonClicked: {
                    console.log("下载管理")
                    BasicConfig.jumpToDownLoadPage()
                }
            }
            KYYLeftButton{
                text: "社区"
                iconSource: "qrc:/img/Resources/leftBar/social.png"
                onButtonClicked: {
                    console.log("社区")
                    BasicConfig.jumpToCommunityPage()
                }
            }
        }
    }
}