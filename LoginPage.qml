import QtQuick 2.0
import QtQuick.Controls 2.2



Item {
    id: item1

    Column{
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 5

        ProgressBar {
            id: loginProgressBar
            value: 0.0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0

        }

        Label {
            id: helloLable

            width: 100
            height: 20
            text: qsTr("Hello")
            font.bold: true
            font.pointSize: 10
            verticalAlignment: Text.AlignVCenter
        }

        Row{
            spacing: 0

            Label {
                id: activeUser

                width: 200
                height: 30
                text: qsTr("Amit Kindre")
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 15
            }

            RoundButton {
                id: changeUserRoundButton
                width: 30
                height: 30
                text: "+"

                onClicked: {
                    swipeView.incrementCurrentIndex();
                }
            }
        }

        TextField {
            id: passwordField
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            placeholderText: qsTr("Password")
        }

        Button {
            id: loginButton

            height: 40
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0

            text: qsTr("Login")
            spacing: 4
            font.letterSpacing: 2
            font.wordSpacing: 0
            font.pointSize: 12
            font.bold: true
        }


    }

}
