import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    id: page
    width: 1000
    height: 1000

    header: Label {
        id: label
        text: qsTr("Page 2")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Slider {
        id: slider
        x: 200
        y: 48
        stepSize: 1
        from: -100
        to: 100
        value: 1
    }

    Label {
        id: label1
        x: 24
        y: 58
        width: 86
        height: 19
        text: qsTr("前进后退" + slider.value)
        font.pointSize: 15
    }

    Label {
        id: label2
        x: 24
        y: 105
        width: 86
        height: 19
        text: "左移右移" + slider1.value
        font.pointSize: 15
    }

    Slider {
        id: slider1
        x: 200
        y: 94
        stepSize: 1
        value: 1
        from: -100
        to: 100
    }

    Slider {
        id: slider2
        x: 200
        y: 140
        stepSize: 1
        value: 1
        from: -100
        to: 100
    }

    Label {
        id: label3
        x: 24
        y: 150
        width: 86
        height: 19
        text: "上浮下潜" + slider2.value
        font.pointSize: 15
    }

    Slider {
        id: slider3
        x: 200
        y: 186
        stepSize: 1
        value: 1
        from: -100
        to: 100
    }

    Label {
        id: label4
        x: 24
        y: 196
        width: 86
        height: 19
        text: "左转右转" + slider3.value
        font.pointSize: 15
    }

    Label {
        id: label6
        x: 582
        y: 105
        width: 86
        height: 19
        text: "云台移动"
        font.pointSize: 15
    }

    Label {
        id: label7
        x: 582
        y: 150
        width: 86
        height: 19
        text: "灯光调节"
        font.pointSize: 15
    }

    SpinBox {
        id: spinBox1
        x: 736
        y: 94
        to: 100
    }

    SpinBox {
        id: spinBox2
        x: 736
        y: 140
        to: 5
    }

    Button {
        id: button
        x: 29
        y: 404
        text: qsTr("录制")
    }

    Button {
        id: button1
        x: 163
        y: 404
        text: qsTr("拍照")
    }

    Switch {
        id: switch1
        x: 306
        y: 404
        text: qsTr("定深")
    }

    Switch {
        id: switch2
        x: 458
        y: 404
        text: qsTr("定向")
    }

    Button {
        id: button2
        x: 29
        y: 319
        text: qsTr("打开摄像头")
    }

    Button {
        id: button3
        x: 163
        y: 319
        text: qsTr("关闭摄像头")
    }

    Text {
        id: lf
        x: 48
        y: 522
        text: qsTr("LF")
        font.pixelSize: 26
    }

    Text {
        id: lb
        x: 49
        y: 588
        text: qsTr("LB")
        font.pixelSize: 26
    }

    Text {
        id: rf
        x: 51
        y: 645
        text: qsTr("RF")
        font.pixelSize: 26
    }

    Text {
        id: rb
        x: 53
        y: 698
        text: qsTr("RB")
        font.pixelSize: 26
    }

    TextInput {
        id: textInput
        x: 766
        y: 414
        width: 80
        height: 20
        text: qsTr("Text Input")
        font.family: "Arial"
        font.pixelSize: 12
    }

}
