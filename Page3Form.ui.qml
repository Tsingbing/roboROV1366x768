import QtQuick 2.4
import QtQuick.Controls 2.2

Item {
    width: 1920
    height: 1080
    property alias progressBar2: progressBar2

    Image {
        id: image
        anchors.fill: parent
        source: "images/background3.jpg"


        Text {
            id: text1
            color: "#ffffff"
            text: qsTr("30fps")
            anchors.rightMargin: 324 * parent.width / 1920
            anchors.bottomMargin: 836 * parent.height / 1080
            anchors.leftMargin: 1452 * parent.width / 1920
            anchors.topMargin: 220 * parent.height / 1080
            anchors.fill: parent
            //text: wifi.wifiRSSI
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
            font.pixelSize: 22
        }

        Text {
            id: text2
            color: "#ffffff"
            text: udp.pressure1
            anchors.rightMargin: 51 * parent.width / 1920
            anchors.bottomMargin: 836 * parent.height / 1080
            anchors.leftMargin: 1725 * parent.width / 1920
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.topMargin: 220 * parent.height / 1080
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 22
            font.bold: true
        }

        Text {
            property int temp: joy.panTilt * 1.4 - 70
            id: text3
            color: "#ffffff"
            text: temp
            anchors.rightMargin: 51 * parent.width / 1920
            anchors.bottomMargin: 771 * parent.height / 1080
            anchors.leftMargin: 1725 * parent.width / 1920
            anchors.topMargin: 285 * parent.height / 1080
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 22
            font.bold: true
        }

        Text {
            id: text4
            width: 144
            color: "#ffffff"
            text: udp.humidity1
            anchors.rightMargin: 324 * parent.width / 1920
            anchors.leftMargin: 1452 * parent.width / 1920
            anchors.topMargin: 285 * parent.height / 1080
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottomMargin: 771 * parent.height / 1080
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 22
            font.bold: true
        }

        Text {
            id: text14
            color: "#ffffff"
            text: udp.heading1
            anchors.bottomMargin: 52 * parent.height / 1080
            anchors.rightMargin: 538 * parent.width / 1920
            anchors.leftMargin: 1349 * parent.width / 1920
            anchors.topMargin: 1012 * parent.height / 1080
            anchors.fill: parent
            font.bold: true
            font.pixelSize: 16
        }

        Text {
            id: text10
            color: "#ffffff"
            text: udp.roll1
            anchors.rightMargin: 447 * parent.width / 1920
            anchors.bottomMargin: 52 * parent.height / 1080
            anchors.leftMargin: 1440 * parent.width / 1920
            anchors.topMargin: 1012 * parent.height / 1080
            anchors.fill: parent
            font.bold: true
            font.pixelSize: 16
        }

        Text {
            id: text19
            color: "#ffffff"
            text: udp.pitch1
            anchors.bottomMargin: 52 * parent.height / 1080
            anchors.leftMargin: 1531 * parent.width / 1920
            anchors.rightMargin: 356 * parent.width / 1920
            anchors.topMargin: 1012 * parent.height / 1080
            anchors.fill: parent
            font.bold: true
            font.pixelSize: 16
        }

        Image {
            id: image6
            anchors.rightMargin: 447 * parent.width / 1920
            anchors.bottomMargin: 138 * parent.height / 1080
            anchors.topMargin: 829 * parent.height / 1080
            anchors.leftMargin: 1450 * parent.width / 1920
            anchors.fill: parent
            opacity: 1
            source: "images/pin.png"
            rotation: udp.heading1
        }

        Image {
            id: image7
            anchors.bottomMargin: 138 * parent.height / 1080
            anchors.rightMargin: 128 * parent.width / 1920
            anchors.topMargin: 829 * parent.height / 1080
            anchors.leftMargin: 1769 * parent.width / 1920
            anchors.fill: parent
            rotation: serial.heading
            opacity: 1
            source: "images/pin.png"
        }

        Text {
            id: text13
            color: "#ffffff"
            text: serial.heading
            anchors.rightMargin: 215 * parent.width / 1920
            anchors.bottomMargin: 52 * parent.height / 1080
            anchors.leftMargin: 1669 * parent.width / 1920
            anchors.topMargin: 1012 * parent.height / 1080
            anchors.fill: parent
            font.pixelSize: 16
            font.bold: true
        }

        Text {
            id: text11
            color: "#ffffff"
            text: "0"
            anchors.rightMargin: 128 * parent.width / 1920
            anchors.bottomMargin: 52 * parent.height / 1080
            anchors.leftMargin: 1758 * parent.width / 1920
            anchors.topMargin: 1012 * parent.height / 1080
            anchors.fill: parent
            font.pixelSize: 16
            font.bold: true
        }

        Text {
            id: text12
            color: "#ffffff"
            text: "0"
            anchors.rightMargin: 37 * parent.width / 1920
            anchors.bottomMargin: 52 * parent.height / 1080
            anchors.topMargin: 1012 * parent.height / 1080
            anchors.leftMargin: 1848 * parent.width / 1920
            anchors.fill: parent
            font.pixelSize: 16
            font.bold: true
        }

        Text {
            id: text5
            color: "#f41414"
            text: wifi.netDelays
            anchors.rightMargin: 438 * parent.width / 1920
            anchors.bottomMargin: 1022 * parent.height / 1080
            anchors.leftMargin: 1068 * parent.width / 1920
            anchors.topMargin: 26 * parent.height / 1080
            anchors.fill: parent
            font.bold: false
            font.pixelSize: 38
        }
    }

    ProgressBar {
        id: progressBar
        anchors.rightMargin: 322 * parent.width / 1920
        anchors.bottomMargin: 898 * parent.height / 1080
        anchors.leftMargin: 1450 * parent.width / 1920
        anchors.topMargin: 147 * parent.height / 1080
        anchors.fill: parent
        value: joy.led / 5
        padding: 2

        background: Rectangle {
            implicitWidth: 200
            implicitHeight: 6
            color: "#e6e6e6"
            radius: 3
            anchors.fill: parent
        }

        contentItem: Item {
            anchors.fill: parent
            implicitWidth: 200
            implicitHeight: 4

            Rectangle {
                width: progressBar.visualPosition * parent.width
                height: parent.height
                radius: 2
                color: "#17a81a"
            }
        }
    }

    ProgressBar {
        id: progressBar2
        value: udp.voltage1
        from: 0
        anchors.rightMargin: 48 * parent.width / 1920
        anchors.bottomMargin: 898 * parent.height / 1080
        anchors.leftMargin: 1724 * parent.width / 1920
        anchors.topMargin: 147 * parent.height / 1080
        anchors.fill: parent
        padding: 2

        background: Rectangle {
            implicitWidth: 200
            implicitHeight: 6
            color: "#e6e6e6"
            radius: 3
            anchors.fill: parent
        }

        contentItem: Item {
            anchors.fill: parent
            implicitWidth: 200
            implicitHeight: 4

            Rectangle {
                x: 0
                y: 0
                width: progressBar2.visualPosition * parent.width
                height: parent.height
                radius: 2
                color: "#17a81a"
            }
        }
    }

    ProgressBar {
        id: progressBar5
        width: 390
        anchors.rightMargin: 80 * parent.width / 1920
        anchors.leftMargin: 1450 * parent.width / 1920
        anchors.topMargin: 523 * parent.height / 1080
        anchors.bottomMargin: 547 * parent.height / 1080
        anchors.fill: parent
        value: udp.temperature / 62.0
        padding: 2
        contentItem: Item {
            width: 144
            height: 29
            implicitWidth: 200
            implicitHeight: 4
            Rectangle {
                x: 0
                y: 0
                width: progressBar5.visualPosition * parent.width
                height: parent.height
                color: "#ff0000"
                radius: 2
            }
        }
    }

    ProgressBar {
        id: progressBar6
        value: udp.temperature / 100.0
        anchors.rightMargin: 80 * parent.width / 1920
        anchors.leftMargin: 1450 * parent.width / 1920
        anchors.bottomMargin: 408 * parent.height / 1080
        anchors.topMargin: 662 * parent.height / 1080
        anchors.fill: parent
        padding: 2
        contentItem: Item {
            width: 144
            height: 29
            implicitWidth: 200
            implicitHeight: 4
            Rectangle {
                x: 0
                y: 0
                width: progressBar6.visualPosition * parent.width
                height: parent.height
                color: "#17a81a"
                radius: 2
            }
        }
    }
}
