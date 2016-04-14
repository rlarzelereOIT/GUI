import QtQuick 2.0

Rectangle {
    property alias text: paschaDialogueText.text
    property alias color: paschaDialogue.color
    property alias onEnter: paschaDialogueMouseArea
    property alias onExit: paschaDialogueMouseArea
    property alias onClick: paschaDialogueMouseArea

    id: paschaDialogue

    anchors.right: parent.right
    anchors.bottom: parent.bottom
    Text{
        id: paschaDialogueText
        anchors.fill: parent
        text:"As always..."
    }
    MouseArea{
        id:paschaDialogueMouseArea
        anchors.fill: parent
        anchors.right: parent.right
        anchors.bottom: parent.bottom

        hoverEnabled: true
        onClicked:{color = "black"}
        onEntered: color = "white"
        onExited: color = "orange"
    }

}
