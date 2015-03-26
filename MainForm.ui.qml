import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {
    width: 640
    height: 480

    property alias button1: button1
    property alias button2: button2
    property alias button3: button3
    property alias button4: button4
    property alias button5: button5
    property alias button6: button6
    property alias button7: button7
    property alias button8: button8
    property alias button9: button9
    property alias button0: button0
    property alias buttonEnter: buttonEnter
    property alias buttonBackspace: buttonBackspace
    property alias buttonPlus: buttonPlus
    property alias buttonSubtraction: buttonSubtraction
    property alias buttonMulti: buttonMulti
    property alias buttonDivision: buttonDivision
    property alias buttonLeftbra: buttonLeftbra
    property alias buttonRightbra: buttonRightbra




    GridLayout {
        anchors.verticalCenterOffset: 0
            anchors.horizontalCenterOffset: 1
            anchors.centerIn: parent
            columns: 3
            rows: 7
            columnSpacing: 4
            rowSpacing: 4



            Button {
                id: buttonPlus
                text: qsTr("+")
            }

            Button {
                id: buttonSubtraction
                text: qsTr("-")
            }

            Button {
                id: buttonMulti
                text: qsTr("*")
            }

            Button {
                id: buttonDivision
                text: qsTr("/")
            }

            Button {
                id: buttonLeftbra
                text: qsTr("(")
            }

            Button {
                id: buttonRightbra
                text: qsTr(")")
            }

            Button {
                id: button1
                text: qsTr("1")
            }

            Button {
                id: button2
                text: qsTr("2")
            }

            Button {
                id: button3
                text: qsTr("3")
            }

            Button {
                id: button4
                text: qsTr("4")
            }

            Button {
                id: button5
                text: qsTr("5")
            }

            Button {
                id: button6
                text: qsTr("6")
            }

            Button {
                id: button7
                text: qsTr("7")
            }

            Button {
                id: button8
                text: qsTr("8")
            }

            Button {
                id: button9
                text: qsTr("9")
            }

            Button {
                id: button0
                text: qsTr("0")
            }

            Button {
                id: buttonEnter
                text: qsTr("Enter")
            }

            Button {
                id: buttonBackspace
                text: qsTr("Backspace")
            }
        }
    }




