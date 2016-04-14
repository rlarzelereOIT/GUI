import QtQuick 2.0

Rectangle{
    property alias text: thisText.text
    property alias color: virtusProTextRect.color
    property alias font: thisText.font
    id: virtusProTextRect
    color: "orange"

    Text {
        id: thisText
        text: "Full Control, my friends"
    }
}
