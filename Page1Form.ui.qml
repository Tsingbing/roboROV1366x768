import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    id: page
    width: 1920
    height: 1080


    GroupBox {
        id: groupBox
        x: 60
        y: 687
        width: 413
        height: 297
        anchors.right: parent.right
        anchors.rightMargin: 1447
        title: qsTr("传感器")

        ProgressBar {
            id: progressBar
            y: 18
            width: 35
            height: 6
            anchors.left: parent.left
            anchors.leftMargin: 83
            scale: 3
            clip: false
            font.pointSize: 9
            padding: 0
            font.wordSpacing: 0.2
            font.weight: Font.Normal
            value: 0.7
        }

        ProgressBar {
            id: progressBar1
            x: 8
            y: 18
            height: 6
            anchors.right: parent.right
            anchors.rightMargin: 65
            font.weight: Font.Normal
            clip: false
            anchors.left: parent.left
            padding: 0
            font.pointSize: 9
            anchors.leftMargin: 285
            value: 0.5
            font.wordSpacing: 0.2
            scale: 3
        }

        Label {
            id: label
            x: 0
            y: 15
            width: 37
            height: 15
            color: "#ff0000"
            text: qsTr("LED:")
        }
        
        Label {
            id: label1
            x: 201
            y: 15
            color: "#ff0000"
            text: qsTr(" 电量：")
        }
        
        Label {
            id: label2
            x: 0
            y: 67
            color: "#ff0000"
            width: 37
            height: 15
            text: qsTr("深度:")
        }
        
        Label {
            id: label3
            x: 201
            y: 67
            color: "#ff0000"
            text: qsTr(" 电压：")
        }
        
        Label {
            id: label4
            x: 0
            y: 113
            color: "#ff0000"
            width: 37
            height: 15
            text: qsTr("湿度:")
        }
        
        Label {
            id: label5
            x: 201
            y: 113
            color: "#ff0000"
            text: qsTr(" 电流：")
        }
        
        Label {
            id: label6
            x: 0
            y: 158
            width: 37
            height: 15
            color: "#ff0000"
            text: qsTr("LED:")
        }
        
        Label {
            id: label7
            x: 201
            y: 158
            color: "#ff0000"
            text: qsTr(" 电量：")
        }
        
        Label {
            id: label8
            x: 0
            y: 198
            width: 37
            height: 15
            color: "#ff0000"
            text: qsTr("连接模式:")
        }
        
        Label {
            id: label9
            x: 201
            y: 198
            color: "#ff0000"
            text: qsTr(" 信号强度：")
        }
    }
    
    Image {
        id: image
        x: 0
        y: 0
        width: 1920
        height: 1080
        z: -1
        source: "images/background.png"
    }

    Label {
        id: label10
        x: 1640
        y: 103
        width: 183
        height: 25
        color: "#ff0000"
        text: qsTr("2017-02-13 19:00:12")
        font.pointSize: 15
    }
}
