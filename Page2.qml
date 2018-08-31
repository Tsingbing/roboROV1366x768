import QtQuick 2.9
import QtQuick.Controls 2.2

Page2Form {

    RoundButton {
        id: roundButton
        z: 1
        text: "X"
        anchors.rightMargin: 18* parent.width / 1920
        anchors.bottomMargin: 1058* parent.height / 1080
        anchors.leftMargin: 1887* parent.width / 1920
        anchors.topMargin: 8* parent.height / 1080
        anchors.fill: parent
        font.pointSize: 10
        onClicked:
        {
            showMaximized();
            //video.imageFlag = 0;
        }
    }

    Button {
        text: "F"
        anchors.rightMargin: 18* parent.width / 1920
        anchors.topMargin: 26* parent.height / 1080
        anchors.bottomMargin: 1039* parent.height / 1080
        anchors.leftMargin: 1887* parent.width / 1920
        anchors.fill: parent
        font.pointSize: 9
        z: 1
        onClicked:
        {
            showFullScreen();
            //video.imageFlag = 2;
        }
    }
    SpinBox {
        id: lf
        x: 127
        y: 517
        value: 90
        stepSize: 1
        from: -1
        to: 100
    }

    SpinBox {
        id: lb
        x: 126
        y: 576
        value: 90
        to: 100
    }

    SpinBox {
        id: rf
        x: 127
        y: 632
        value: 90
        to: 100
    }

    SpinBox {
        id: rb
        x: 127
        y: 686
        value: 90
        to: 100
    }

    Button {
        id: button4
        x: 331
        y: 605
        text: qsTr("发送参数")
        font.pointSize: 12
        onClicked:
        {
            udp.sendSetMotorParameters(lf.value,lb.value,rf.value,rb.value);
        }
    }

    Label {
        id: label8
        x: 613
        y: 522
        width: 18
        height: 17
        text: qsTr("P: ")
        font.pointSize: 12
        font.bold: true
    }


    Label {
        id: label9
        x: 613
        y: 545
        width: 18
        height: 17
        text: qsTr("I: ")
        font.pointSize: 12
        font.bold: true
    }


    Label {
        id: label10
        x: 613
        y: 568
        width: 18
        height: 17
        text: qsTr("D: ")
        font.pointSize: 12
        font.bold: true
    }

    Label {
        id: label11
        x: 613
        y: 588
        width: 18
        height: 17
        text: qsTr("m: ")
        font.pointSize: 12
        font.bold: true
    }
    TextInput {
        id: p
        x: 658
        y: 521
        width: 80
        height: 20
        text: qsTr("0.0")
        font.pixelSize: 15
    }

    TextInput {
        id: i
        x: 658
        y: 544
        width: 80
        height: 20
        text: qsTr("0.0")
        font.pixelSize: 15
    }

    TextInput {
        id: d
        x: 658
        y: 569
        width: 80
        height: 20
        text: qsTr("0.0")
        font.pixelSize: 15
    }

    TextInput {
        id: modePID
        x: 658
        y: 589
        width: 80
        height: 20
        text: qsTr("1")
        font.pixelSize: 15
    }

    Button {
        id: buttonPID
        x: 613
        y: 625
        width: 85
        height: 22
        text: qsTr("发送PID")
        onClicked: {
            udp.sendSetPIDParameters(parseInt(modePID.text), parseFloat(p.text), parseFloat(i.text), parseFloat(d.text));
        }
    }

    ComboBox {
        id: comboBox
        x: 851
        y: 607
        model: ["0", "100", "200"]
    }

    Button {
        id: buttonHand
        x: 1024
        y: 607
        text: qsTr("Button")
        onClicked: udp.sendMachineHand(parseInt(comboBox.currentText))
    }

}
