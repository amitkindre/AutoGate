import QtQuick 2.0
import QtQuick.Controls 2.2

Item {
    id: item1

    MouseArea {
        id: mouseArea
        x: 195
        y: 115
        anchors.fill: parent

        Image {
            id: imageOpen
            x: 195
            y: 115
            width: 250
            height: 250
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            source: "GateOpen.png"
        }

        Image {
            id: imageClose
            x: 195
            y: 115
            width: 250
            height: 250
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            source: "GateClosed.png"
            visible: false
        }

        onClicked: {
            imageClose.visible = !imageClose.visible

        }
    }

}
