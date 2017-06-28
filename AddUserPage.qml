import QtQuick 2.0
import QtQuick.Controls 2.2

Item {
    id: item1

    GroupBox {
        id: groupBox

        width: 200
        height: 200
        title: qsTr("User Detail")

        Column {
            id: column
            spacing: 10
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            TextField {
                id: userNameText
                text: qsTr("Text Field")
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
            }

            TextField {
                id: passwordText
                text: qsTr("Text Field")
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
            }

            Button {
                id: addUserButton
                text: qsTr("ADD USER")
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
            }
        }
    }

}
