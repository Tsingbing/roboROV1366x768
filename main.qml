import QtQuick 2.9
import QtQuick.Controls 2.2
import com.robosea.joystick 1.0
import com.robosea.udpmaster 1.0
import com.robosea.serialrov 1.0

ApplicationWindow {
    visible: true
    width: 1366
    height: 768
    title: qsTr("ROV")


    JoystickItem{
        id: joy
        property int frontBack: 0 //前进后退
        property int leftRightMove: 0 //左移右移
        property int leftRightRound: 0 //左转右转
        property int upDown: 0 //上浮下潜
        property int directional: 0 //// 0:(!定深&&!定向) 1:(定深&&定向) 2:(!定深&&定向) 3:(定深&&定向)
        property double led: 0 //灯光强度
        property double panTilt: 50 //云台角度
        property int hand: 1400 //手臂
        property int handUpDown: 1500 //手臂抬放
        property double rateSpeed: 1
        running: true

    }

    UdpMasterItem{
        id: udp
        property double temperature1: 0
        property double humidity1: 0
        property double pressure1: 0
        property double heading1: 0
        property double roll1: 0
        property double pitch1: 0
        property double current1: 0
        property double voltage1: 0
        property double step_past: 5 * 0.2 //和voltage有关从参数
        localIP: "192.168.1.15"
        remoteIP: "192.168.1.10"
    }

    SerialRovItem {
        id: serial
        portName: "COM3"
        waitTimeOut: 500
    }

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex
        Page3 {
        }

        Page2 {
        }
    }

    TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        background: Rectangle
        {
            color: "#00ff00"
        }
        x: 1790
        y: 0
//        TabButton {
//            text: qsTr("主页")
//            width: 40
//            height: 40
//        }
//        TabButton {
//            text: qsTr("设置")
//            width: 40
//            height: 40
//        }
//        TabButton {
//            text: qsTr("Page")
//            width: 40
//            height: 40
//        }
    }
}
