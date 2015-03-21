import QtQuick 2.0

Rectangle {
    width: 100
    height: 62
    id: root

    property alias text: label.text
    signal clicked

    color: black

    Text {
        id: label
        anchors.centerIn: parent
        text: ""
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            root.clicked()
        }
    }
}

