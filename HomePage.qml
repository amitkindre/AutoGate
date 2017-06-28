import QtQuick 2.0
import QtQuick.Controls 2.2

Item {

    function fun1()
    {

    }


    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: 0

        LoginPage{
            id:loginPage
        }

        AddUserPage{
            id: userPage
        }
    }

}
