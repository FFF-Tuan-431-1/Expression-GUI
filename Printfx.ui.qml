import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Rectangle {
    width: 640
    height: 100

    property alias input: input
    GridLayout {
        columns: 2
        anchors.fill: parent
        anchors.margins: 10
        rowSpacing: 10
        columnSpacing: 10

        Label {
            text: "input:"
        }

        TextField {
            id: input
            text: qsTr("0")
            Layout.fillWidth: true
        }



        Label {
            text: "Suffix expression:"
        }

        Label {
            id: suffix
            text: qsTr("0")
            verticalAlignment: Text.AlignTop
            style: Text.Normal
            Layout.fillWidth: true
        }




        Label {
            text: "Result:"
        }

        Label {
            id: result
            text: qsTr("0")
            Layout.fillWidth: true
        }



    }



}


