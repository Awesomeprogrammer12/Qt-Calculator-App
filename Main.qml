import QtQuick
import QtQuick.Controls

Window {
    id:root
    property string answer :"0"
    property string fg :"white"
    width:500
    height:600
    visible: true
    title: qsTr("Calculator")
    Home{id:mainCalcArea}
    Rectangle{
        id:sidebar
        height:sidebarmouse.containsMouse?parent.height*0.095:(sidebarHistory.containsMouse?parent.height*0.085:10)
        width:parent.width
        anchors.bottom: parent.bottom
        color:"#1f1f1f"
        MouseArea{
            id:sidebarmouse
            anchors.fill:parent
            hoverEnabled: true
        }
        Behavior on height{
            NumberAnimation{
                duration:500
                easing: Easing.OutBack
            }
        }
        Button{
            anchors.centerIn: parent
            height: parent.height-5
            width:parent.width*0.1
            MouseArea{
                id:sidebarHistory
                hoverEnabled: true
                anchors.fill: parent
            }
            Rectangle{
                color:"#3f3f3f"
                anchors.fill: parent
                radius:5
            }
            icon.source: "qrc:/history.png"
            icon.color: "white"
            icon.width:parent.width-2
            icon.height:parent.height-2
        }
    }

    color:"black"
}
