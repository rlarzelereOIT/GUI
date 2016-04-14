//Name: Ray Larzelere
//Lab: 2, Splash Screen
//Project: ?????, Profit

import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtMultimedia 5.5
import QtQuick.Dialogs 1.2

Window {
    visible: true
    height:500
    width: 500
    Image{
        id: background
        source:"Ash_Tree.jpg"
    }
    MyVPTextRect{
        anchors.top: parent.top
        anchors.left: parent.left
        height: 150
        width: 305
        color: "light green"
        text: "Raymond Larzelere is proud to present...
A mobile app to track the age of trees and
 other relevant information. My dream is to
have a cloud that manages all data entries.
 A function of the app is having a \"news
feed\" to see which tree was worked
on by who."
    }
    MyVPDialogue{
        height: 100
        width: 110
        color: "light green"
        anchors.centerIn: parent
        text: " This is where\n the title goes\n\n IF I HAD ONE"
        onEnter.onEntered:{
            color = "yellow"
        }
        onExit.onExited: {
            color = "light green"
        }

        onClick.onClicked:{
            color = "green"
        }
    }
    MyVPButton{
        height:20
        width:50
        anchors.verticalCenter: parent
        anchors.bottom: parent.bottom
        text:"  Exit"

        color:"light green"
        onEnter.onEntered:{
            color = "red"
        }
        onExit.onExited:{
            color = "light green"
        }
        onClick.onClicked:{
            color = "red"
            close()
        }
    }
}

//Window {
//    visible: false
//    height:500
//    width: 500
//    color:"orange"

//    MyVPButton
//    {
//        onEnter.onEntered:
//        {
//            color = "green"
//        }
//        onExit.onExited:
//        {
//            color = "red"
//        }
//        onClick.onClicked:
//        {
//            //color = "purple"

//        }
//    }

//    MyVPTextRect{
//        height: 100
//        width: 200
//        color: "white"
//        text:"Pascha Biceps pro"
//    }

//    MyVPDialogue{
//        height: 50
//        width: 100
//        onClick.onClicked:
//        {
//            color = "yellow"
//        }
//    }
//}
