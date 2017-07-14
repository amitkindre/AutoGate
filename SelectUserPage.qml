import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQml 2.2 //for completed event

Item {
    id: item1
    Component.onCompleted: listUser();

    Connections{
        target: udbase
        onFunc: listModel.append({"namex":UserName,"colorCode":"lightgreen"})
    }


    Column{
        id: column
        width: 250
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        spacing: 30

        Label {
            id: selectUserLable
            height: 30
            text: "Chose an account"
            z: 1
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
            width: 200
            height: 160
            snapMode: ListView.SnapToItem

            contentHeight: 40
            contentWidth: 200
            spacing: 5

            boundsBehavior: Flickable.StopAtBounds
            model: ListModel{
                id: listModel
                ListElement{
                    namex: "Admin"
                    colorCode:"steelblue"
                }
            }

            delegate: Item {
                x: 5
                width: 80
                height: 40
                Row {
                    id: row1
                    Rectangle {
                        width: 40
                        height: 40
                        color: colorCode
                    }

                    Text {
                        text: namex
                        font.bold: true
                        anchors.verticalCenter: parent.verticalCenter
                    }
                    spacing: 10
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

            onClicked:{
                 //listModel.append({"namex":list[0].name,"colorCode":"pink"})


            }

        }

    }
    function listUser(){
        udbase.listAllUsers()
    }

    function addUser(){
        listModel.append({"namex":UserName,"colorCode":"lightgreen"})
    }
}

