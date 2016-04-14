import QtQuick 2.0
import QtMultimedia 5.5

Rectangle{
    id: paschaButton
    height: 150
    width: 450
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.verticalCenter: parent.verticalCenter
    property alias onEnter: paschaMouseArea
    property alias onExit: paschaMouseArea
    property alias onClick: paschaMouseArea
    property alias text: buttonText.text

    Text {
        id:buttonText
        text: "Biceps is always with you"
        anchors.fill:parent
        anchors.centerIn: parent
    }
    MediaPlayer{
        id: bicepsSound
        volume: 1
        source: "/Users/yoube_000/Documents/qtCreatorGit/Lab2GUI/bicepsisalwayswithyou.mp3"
    }
    MouseArea{
        id:paschaMouseArea
        anchors.fill: parent

        hoverEnabled: true
        onClicked:{
            color = "purple"
            bicepsSound.play()
        }
        onEntered: color = "white"
        onExited: color = "orange"


        }
}
