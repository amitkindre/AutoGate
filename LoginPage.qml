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
            height: 30
            text: qsTr("Hello")
            font.bold: true
            font.pointSize: 20
            verticalAlignment: Text.AlignVCenter
        }

        Row{
            spacing: 0

            Label {
                id: activeUser

                width: 200
                height: 50
                text: qsTr("Amit Kindre")
                //font.bold: true
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 25
            }

            RoundButton {
                id: changeUserRoundButton
                width: 50
                height: 50
                text: "+"

                onClicked: {
                    swipeView.incrementCurrentIndex();
                }
            }
        }

        TextField {
            id: passwordField
            height: 50
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0

            echoMode: TextField.Password
            placeholderText: qsTr("Password")

            //font.bold: true
            font.pointSize: 15
        }

        Button {
            id: loginButton

            height: 60
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0

            text: qsTr("Login")
            font.letterSpacing: 2
            font.pointSize: 15
            font.bold: true

            onClicked: {
                console.log("Login button Pressed")
                wscan.scanNetworks();
            }
        }


    }


}
