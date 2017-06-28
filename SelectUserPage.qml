import QtQuick 2.0
import QtQuick.Controls 2.2

Item {
    id: item1

    Column{
        id: column
        width: 250
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        spacing: 10

        Label {
            id: selectUserLable
            height: 30
            text: "Chose an account"
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            font.bold: true
            font.pointSize: 20
            verticalAlignment: Text.AlignVCenter
        }

        ListView {
            id: listView

            height: 150
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            spacing: 5

            delegate: Item {

                width: 80
                height: 40

                Row {
                    id: row1
                    spacing: 10
                    Rectangle {
                        width: 40
                        height: 40
                        color: colorCode
                    }

                    Label{
                        text: name
                        font.pixelSize: 20
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }
            }
            model: ListModel {
                ListElement {
                    name: "Amit Kindre"
                    colorCode: "grey"
                }

                ListElement {
                    name: "Santosh "
                    colorCode: "red"
                }
            }
        }

        Button {
            id: button
            height: 60
            text: qsTr("Add account")
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0

            font.pointSize: 15
            font.bold: true

        }
    }
}
