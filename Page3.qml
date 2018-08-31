import QtQuick 2.4
//import com.robosea.wifi 1.0
import com.robosea.opencvrov 1.0
import QtQuick.Controls 2.2

Page3Form {
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
    function joyfunction(){

        if(joy.axis === 0)
            joy.frontBack = -joy.axisValue * joy.rateSpeed;
        if(joy.axis === 1)
            joy.leftRightMove = joy.axisValue * joy.rateSpeed;
        if(joy.axis === 2)
        {
            //无线模式不能上浮下潜
            //if(switch3.checked)
            joy.upDown = -joy.axisValue * joy.rateSpeed;
            //else
            //    joy.upDown = 0;
        }
        if(joy.axis === 3)
            joy.leftRightRound = joy.axisValue * joy.rateSpeed;
        if(joy.axis === 4)
        {
            //joy.hand = joy.axisValue;// + 100;
        }
        //        else
        //        {
        //            joy.hand = -joy.axisValue+ 100;
        //        }

        if(joy.axis === 5 && joy.axisValue === 100)
        {
            if(joy.led < 5)
                joy.led += 0.5;
            else
                joy.led = 5;
        }
        if(joy.axis === 5 && joy.axisValue === -100)
        {
            if(joy.led > 0)
                joy.led -= 0.5;
            else
                joy.led = 0;
        }
        if(joy.axis === 6 && joy.axisValue === -100)
        {
            if(joy.panTilt < 100)
                joy.panTilt += 1;
            else
                joy.panTilt = 100;
        }
        if(joy.axis === 6 && joy.axisValue === 100)
        {
            if(joy.panTilt > 0)
                joy.panTilt -= 1;
            else
                joy.panTilt = 0;
        }
        //拍照
        if (joy.button === 1 && joy.buttonPressed)
        {
            //video.cap();

        }
        //定深
        if(joy.button === 2 && joy.buttonPressed)
        {
            //switch1.clicked();
            if(switch1.flag <=2)
                switch1.flag++;
            else
                switch1.flag = 0;

            if(switch1.flag === 0)
                switch1.checked = false;
            if(switch1.flag === 2)
                switch1.checked = true;
        }

        //定航
        if(joy.button === 3 && joy.buttonPressed)
        {
            if(switch2.flag <=2)
                switch2.flag++;
            else
                switch2.flag = 0;

            if(switch2.flag === 0)
                switch2.checked = false;
            if(switch2.flag === 2)
                switch2.checked = true;
        }

        //高速
        if(joy.button === 7 && joy.buttonPressed)
        {
            //video.zoomIn();
            //手打开
            //udp.sendMachineHand(joy.handOpen);
            //高速
            switch4.checked = false
            if(switch4.checked){
                //video.running = false;
                joy.rateSpeed = 0.3
            }
            else{
                //video.running = true;
                joy.rateSpeed = 1
            }
        }
        //低速
        if(joy.button === 6 && joy.buttonPressed)
        {
            //手关闭
            //udp.sendMachineHand(joy.handClose);
            //video.zoomOut();
            switch4.checked = true
            if(switch4.checked){
                //video.running = false;
                joy.rateSpeed = 0.3
            }
            else{
                //video.running = true;
                joy.rateSpeed = 1
            }
        }

        //缩小 手臂抬
        if(joy.button === 5 && joy.buttonPressed)
        {
            //video.zoomIn();

        }
        //放大 手臂放
        if(joy.button === 4 && joy.buttonPressed)
        {
            //手关闭
            //udp.sendMachineHand(joy.handClose);
            //video.zoomOut();

        }


        if(!switch1.checked && !switch2.checked)
            joy.directional = 0;
        if(switch1.checked && !switch2.checked)
            joy.directional = 1;
        if(!switch1.checked && switch2.checked)
            joy.directional = 2;
        if(switch1.checked && switch2.checked)
            joy.directional = 3;

        console.log(joy.directional);

        if(joy.button === 8 && joy.buttonPressed)
        {
            joy.frontBack = 0;
            joy.leftRightMove = 0;
            joy.leftRightRound = 0;
            joy.upDown = 0;
            joy.directional = 0;
        }
        if(joy.button === 9 && joy.buttonPressed)
        {
            joy.frontBack = 0;
            joy.leftRightMove = 0;
            joy.leftRightRound = 0;
            joy.upDown = 0;
            joy.directional = 0;
        }

        //udp.sendMoveCommandToUDP(joy.frontBack, joy.leftRightMove, joy.leftRightRound,joy.upDown,joy.directional);
        //udp.sendLightCommandToUdp(joy.led);
        //udp.sendPanTiltCommandToUdp(joy.panTilt);
    }

    function udpfunction(){

        //        var jsonObj = JSON.parse(udp.dataStateAck);
        //        if(jsonObj["temperature"] !== undefined)
        //        {
        //            udp.temperature =  jsonObj["temperature"];
        udp.temperature = udp.temperature.toFixed(2);
        //        }

        //        if(jsonObj["humidity"] !== undefined)
        //        {
        //            udp.humidity =  jsonObj["humidity"];
        udp.humidity1 = udp.humidity.toFixed(2);
        //        }
        //        if(jsonObj["pressure"] !== undefined)
        //        {
        //            udp.pressure =  jsonObj["pressure"];
        udp.pressure1 = udp.pressure.toFixed(2);
        //        }

        //        if(jsonObj["heading"] !== undefined)
        //        {
        //            udp.heading =  jsonObj["heading"];
        udp.heading1 = udp.heading.toFixed(0);
        //        }

        //        if(jsonObj["roll"] !== undefined)
        //        {
        //            udp.roll =  jsonObj["roll"];
        udp.roll1 = udp.roll.toFixed(0);
        //        }

        //        if(jsonObj["pitch"] !== undefined)
        //        {
        //            udp.pitch =  jsonObj["pitch"];
        udp.pitch1 = udp.pitch.toFixed(0);
        //        }

        //        if(jsonObj["current"] !== undefined)
        //        {
        //            udp.current =  jsonObj["current"];
        udp.current1 = udp.current.toFixed(2);
        //        }

        //        if(udp.voltage == undefined)
        //        {
        //            udp.voltage =  jsonObj["voltage"];
        //            udp.voltage1 = udp.voltage.toFixed(2);
        //        }
        if(udp.voltage >13)
        {
            if(udp.voltage >= 16.1)
                udp.voltage1 = 5 * 0.2;
            else if(udp.voltage < 16.1 && udp.voltage >15.7)
                udp.voltage1 = 4 * 0.2;
            else if(udp.voltage <= 15.7 && udp.voltage >15.3)
                udp.voltage1 = 3* 0.2;
            else if(udp.voltage <= 15.3 && udp.voltage >14.9)
                udp.voltage1 = 2* 0.2;
            else if(udp.voltage <= 14.9 && udp.voltage >14.5)
                udp.voltage1 = 1* 0.2;
            else if(udp.voltage < 14.5)
                udp.voltage1 = 0;

            if(udp.voltage1 > udp.step_past)
            {
                udp.voltage1 = udp.step_past;
            }

            udp.step_past = udp.voltage1;
        }
    }

    Timer{
        id:t
        interval: 100
        repeat: true
        running: true
        onTriggered:{
           // var a = wifi.GetWlanRSSI();
            //joyfunction();
            //joyfunction();
            udpfunction();
            if(joy.axis === 5)
                udp.sendLightCommandToUdp(joy.led);
            if(joy.axis === 0 || joy.axis === 1 || joy.axis === 2 || joy.axis === 3)
                udp.sendMoveCommandToUDP(joy.leftRightMove, joy.frontBack, joy.upDown,joy.leftRightRound,joy.directional);
            if(joy.axis === 6)
                udp.sendPanTiltCommandToUdp(joy.panTilt);
            //手抓放
            if(joy.axis === 4){
                //udp.sendMachineHand(joy.hand)
               // udp.sendMachineHand(0,joy.hand*20 + 500);

                if(joy.axisValue < 50 && joy.axisValue > 0)
                    joy.hand = joy.hand + 20;
                if(joy.axisValue > -50 && joy.axisValue < 0)
                    joy.hand = joy.hand - 20;

                if(joy.hand > 1900)
                    joy.hand = 1900;
                if(joy.hand < 600)
                    joy.hand = 600;
                udp.sendMachineHand(joy.hand,joy.handUpDown);
                //udp.sendMachineHand(joy.hand,1500);
            }

            //手抬
            //缩小 手臂抬
            if(joy.button === 5 && joy.buttonPressed)
            {
                joy.handUpDown = joy.handUpDown + 10;

                if(joy.handUpDown > 1500)
                    joy.handUpDown = 1500;
                if(joy.handUpDown < 1140)
                    joy.handUpDown = 1140;
                udp.sendMachineHand(joy.hand,joy.handUpDown);
            }
            //放大 手臂放
            if(joy.button === 4 && joy.buttonPressed)
            {
                joy.handUpDown = joy.handUpDown - 10;
                if(joy.handUpDown > 1500)
                    joy.handUpDown = 1500;
                if(joy.handUpDown < 1140)
                    joy.handUpDown = 1140;

                udp.sendMachineHand(joy.hand,joy.handUpDown);
                //手关闭
                //udp.sendMachineHand(joy.handClose);
                //video.zoomOut();
            }

            //console.log( joy.handUpDown + "::" + joy.hand);
            serial.sendState();
            video.showFlag = 0;
        }
    }

    //    Button {
    //        id: button
    //        x: 1747
    //        y: 433
    //        text: qsTr("Cap")
    //        onClicked: video.cap()
    //    }


    Text {
        id: text6
        //z: 10
        color: "#fff2f2"
        //text: qsTr("00:01:26")
        text:tt.mmss
        anchors.bottomMargin: 135 * parent.height / 1080
        anchors.rightMargin: 1574 * parent.width / 1920
        anchors.leftMargin: 202 * parent.width / 1920
        anchors.topMargin: 923 * parent.height / 1080
        anchors.fill: parent
        font.family: "Courier"
        font.pixelSize: 20
        font.bold: false
    }
    Timer{
        id:tt
        property int mm: 0
        property int ss: 0
        property string mmss: "00:00"
        interval: 1000
        repeat: true
        running: true
        onTriggered:{
            ss++;
            if(ss >= 60) {
                ss = 0;
                mm++;
                if(mm>=60)
                    mm = 0;
            }
            mmss = mm + ":" + ss;
        }
    }
//    WifiItem{
//        id:wifi
//    }

    Text {
        id: text8
        color: "#fff7f7"
        //text: qsTr("***")
        anchors.rightMargin: 31 * parent.width / 1920
        anchors.topMargin: 89 * parent.height / 1080
        anchors.bottomMargin: 979 * parent.height / 1080
        anchors.leftMargin: 1352* parent.width / 1920
        anchors.fill: parent
        text:
        {
            joyfunction();
            //udp.sendMoveCommandToUDP(joy.frontBack, joy.leftRightMove, joy.leftRightRound,joy.upDown,joy.directional);
            return joy.frontBack
                    + "::" + joy.leftRightMove + "::" + joy.upDown + "::" + joy.leftRightRound + "::" + joy.directional + "::"
                    + joy.led + "::" + joy.panTilt + "::" + joy.hand + "::" + joy.handUpDown;
                    //+ "    " + joy.buttonPressed + "::" + joy.button + "::" + joy.axis + "::" + joy.axisValue
        }
        font.bold: true
        font.pixelSize: 12
    }

//    Text {
//        id: text9
//        color: "#fff7f7"
//        //text: qsTr("***")
//        anchors.rightMargin: 1034* parent.width / 1920
//        anchors.bottomMargin: 978* parent.height / 1080
//        anchors.leftMargin: 31* parent.width / 1920
//        anchors.topMargin: 84* parent.height / 1080
//        anchors.fill: parent
//        text:
//        {
//            //joyfunction();
//            //joy.frontBack + "::" + joy.leftRightMove
//            return "V:" + udp.voltage + "  H:" + udp.humidity1 + "  C:" + udp.current1 + "  He:" +udp.heading1 + "  R:" + udp.roll1 + "  P:" +udp.pitch1;
//        }
//        //text:
//        font.bold: true
//        font.pixelSize: 12
//    }

    Text {
        id: text5
        //z: 10
        color: "#da0e0e"
        text: qsTr("REC")
        anchors.rightMargin: 1826* parent.width / 1920
        anchors.bottomMargin: 134 * parent.height / 1080
        anchors.topMargin: 923 * parent.height / 1080
        anchors.leftMargin: 57* parent.width / 1920
        anchors.fill: parent
        font.family: "Courier"
        font.bold: true
        font.pixelSize: 18
    }

//    Text {
//        id: text7
//        color: "#fff2f2"
//        text: wifi.wifiRSSI
//        anchors.rightMargin: 132* parent.width / 1920
//        anchors.bottomMargin: 1008 * parent.height / 1080
//        anchors.leftMargin: 1653* parent.width / 1920
//        anchors.topMargin: 55 * parent.height / 1080
//        anchors.fill: parent
//        font.bold: true
//        font.pixelSize: 17
//    }
    Rectangle {
        id: rectangle
        anchors.leftMargin: 30 * parent.width / 1920
        anchors.bottomMargin: 168 * parent.height / 1080
        anchors.rightMargin: 619 * parent.width / 1920
        anchors.topMargin: 110 * parent.height / 1080
        anchors.fill: parent

        color: "#ffffff"
        OpencvRovItem{
            id: video
            anchors.fill: parent;
            running: true
            rtsp: "rtsp://192.168.1.12:554/user=admin_password=tlJwpbo6_channel=1_stream=0.sdp?real_stream"
            imageFlag: 0
            //z:1
            //curFrame:mui_face

        }

//        OpencvSharkItem{
//            id: video
//            anchors.fill: parent
//            running: true
//        }
    }
    Switch {
        property int flag: 0
        id: switch1
        text: qsTr("")
        anchors.rightMargin: 403 * parent.width / 1920
        anchors.bottomMargin: 701 * parent.height / 1080
        anchors.leftMargin: 1442 * parent.width / 1920
        anchors.topMargin: 345 * parent.height / 1080
        anchors.fill: parent
    }
    Switch {
        property int flag: 0
        id: switch2
        text: qsTr("")
        anchors.rightMargin: 122 * parent.width / 1920
        anchors.bottomMargin: 695 * parent.height / 1080
        anchors.leftMargin: 1726 * parent.width / 1920
        anchors.topMargin: 339 * parent.height / 1080
        anchors.fill: parent
    }

    Switch {
        id: switch3
        anchors.rightMargin: 80 * parent.width / 1920
        anchors.bottomMargin: 1004 * parent.height / 1080
        anchors.leftMargin: 1719 * parent.width / 1920
        anchors.topMargin: 8 * parent.height / 1080
        anchors.fill: parent
        onClicked: {
            if(switch3.checked){
                //wifi.DisableWifi();
            }
            else{
                //wifi.EnableWifi();
            }
        }
    }
    Switch {
        id: switch4
        text: qsTr("")
        anchors.rightMargin: 625  * parent.width / 1920
        anchors.bottomMargin: 52 * parent.height / 1080
        anchors.leftMargin: 1165  * parent.width / 1920
        anchors.topMargin: 922 * parent.height / 1080
        anchors.fill: parent
        onClicked: {
//            if(switch4.checked){
//                //video.running = false;
//                joy.rateSpeed = 0.3
//            }
//            else{
//                //video.running = true;
//                joy.rateSpeed = 1
//            }
        }
    }

//    Image {
//        id: image1
//        anchors.rightMargin: 237  * parent.width / 1920
//        anchors.bottomMargin: 1020 * parent.height / 1080
//        anchors.leftMargin: 1626  * parent.width / 1920
//        anchors.topMargin: 22 * parent.height / 1080
//        anchors.fill: parent
//        source: {
//            if(switch3.checked)
//            {
//                text7.visible = false;
//                return "images/WireNet1.png";
//            }
//            else
//            {
//                text7.visible = true;
//                if( 80 < wifi.wifiRSSI && wifi.wifiRSSI <= 100)
//                    return "images/wifiRssi5.png";
//                if( 60 < wifi.wifiRSSI && wifi.wifiRSSI <= 80)
//                    return "images/wifiRssi4.png";
//                if( 40 < wifi.wifiRSSI && wifi.wifiRSSI <= 60)
//                    return "images/wifiRssi3.png";
//                if( 20 < wifi.wifiRSSI && wifi.wifiRSSI <= 40)
//                    return "images/wifiRssi2.png";
//                if( 0  < wifi.wifiRSSI && wifi.wifiRSSI <= 20)
//                    return "images/wifiRssi1.png";
//                if(wifi.wifiRSSI  === 0)
//                    return "images/wifiRssi0.png";
//            }
//        }
//    }
    Image {
        id: image2
        anchors.rightMargin: 1789  * parent.width / 1920
        anchors.bottomMargin: 125 * parent.height / 1080
        anchors.leftMargin: 112  * parent.width / 1920
        anchors.topMargin: 928 * parent.height / 1080
        anchors.fill: parent
        source: "images/rec闪烁圆点.png"
    }

    Image {
        id: image3
        anchors.rightMargin: 1446  * parent.width / 1920
        anchors.bottomMargin: 30 * parent.height / 1080
        anchors.leftMargin: 368  * parent.width / 1920
        anchors.topMargin: 941 * parent.height / 1080
        anchors.fill: parent
        source: {
            if(mousearea2.flag === 0)
            {
                video.showFlag = 0;
                tt.running = false;
                return "images/record.png"
            }
            else
            {
                video.showFlag = 1;
                tt.running = true;
                text6.visible = true;
                text5.visible = true;
                image2.visible = true;
                return "images/recoding.png"
            }
        }
        MouseArea {
            property int flag: 0
            id: mousearea2
            anchors.fill: image3
            onClicked :
            {
                flag ++;
                if(flag === 2)
                    flag = 0;
            }
        }
    }

    Image {
        id: image4
        anchors.rightMargin: 1194  * parent.width / 1920
        anchors.bottomMargin: 30 * parent.height / 1080
        anchors.leftMargin: 618  * parent.width / 1920
        anchors.topMargin: 941 * parent.height / 1080
        anchors.fill: parent
        source: {
            if(mousearea3.flag === 0)
            {
                video.showFlag = 0;
                mousearea2.flag = 0;
                tt.ss = 0;
                tt.mm = 0;
                tt.mmss = "0:0"
                text6.visible = false;
                text5.visible = false;
                image2.visible = false;
                return "images/save0.png"
            }
            else
            {
                video.showFlag = 2;
                text6.visible = true;
                text5.visible = true;
                image2.visible = true;
                return "images/save1.png"
            }
        }
        MouseArea {
            property int flag: 0
            id: mousearea3
            anchors.fill: image4
            onClicked :
            {
                //                flag ++;
                //                if(flag === 2)
                //                    flag = 0;
            }
            onPressed: flag = 1

            onReleased: flag = 0
        }
    }

    Image {
        id: image5
        anchors.rightMargin: 949 * parent.width / 1920
        anchors.bottomMargin: 30 * parent.height / 1080
        anchors.leftMargin: 863  * parent.width / 1920
        anchors.topMargin: 941 * parent.height / 1080
        anchors.fill: parent
        source:             {
            if(mousearea4.flag === 0)
            {
                video.showFlag = 0;
                return "images/capture1.png"
            }
            else
            {
                video.showFlag = 3;
                return "images/capture0.png"
            }
        }
        MouseArea {
            property int flag: 0
            anchors.fill: image5
            id: mousearea4

            onPressed: flag = 1
            onReleased: flag = 0
        }
    }
}
