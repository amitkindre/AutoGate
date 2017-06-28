import QtQuick 2.0
import QtQuick.Controls 2.2

Item {
    id: item1

    Column{
        id: column
        width: 200
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        spacing: 5
        Label {
            id: selectUserLable
            width: 200
            height: 30
            text: "Chose an account"
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            font.bold: true
            font.pointSize: 15
            verticalAlignment: Text.AlignVCenter
        }

        ListView {
            id: listView

            height: 100
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
            text: qsTr("Add account")
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
        }
    }
}
