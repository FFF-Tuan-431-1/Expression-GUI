import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

import "qrc:/view/Util.js" as Logic

Rectangle {
    width: 400
    height: 800

ColumnLayout {
   //column: 2

    Rectangle {
        width: 400
        height: 120
        id: show

        property alias input: input
        property alias suffix: suffix
        property alias result: result

        GridLayout {
            anchors.rightMargin: 20
            anchors.bottomMargin: 12
            anchors.leftMargin: 0
            anchors.topMargin: 8
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
                text: qsTr("")
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


    Rectangle {


        width: 400
        height: 480

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
                       // onClicked: Logic.operatorBtnClickListender("+", input, suffix, result)
                    }

                    Button {
                        id: buttonSubtraction
                        text: qsTr("-")
                        //onClicked: Logic.operatorBtnClickListender("-", input, suffix, result)
                    }

                    Button {
                        id: buttonMulti
                        text: qsTr("*")
                       //onClicked: Logic.operatorBtnClickListender("*", input, suffix, result)
                    }

                    Button {
                        id: buttonDivision
                        text: qsTr("/")
                        //onClicked: Logic.operatorBtnClickListender("/", input, suffix, result)
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
                        onClicked: Logic.numberBtnClickListender(1, input, suffix, result)
                    }

                    Button {
                        id: button2
                        text: qsTr("2")
                        onClicked: Logic.numberBtnClickListender(2, input, suffix, result)
                    }

                    Button {
                        id: button3
                        text: qsTr("3")
                        onClicked: Logic.numberBtnClickListender(3, input, suffix, result)
                    }

                    Button {
                        id: button4
                        text: qsTr("4")
                        onClicked: Logic.numberBtnClickListender(4, input, suffix, result)
                    }

                    Button {
                        id: button5
                        text: qsTr("5")
                        onClicked: Logic.numberBtnClickListender(5, input, suffix, result)
                    }

                    Button {
                        id: button6
                        text: qsTr("6")
                        onClicked: Logic.numberBtnClickListender(6, input, suffix, result)
                    }

                    Button {
                        id: button7
                        text: qsTr("7")
                        onClicked: Logic.numberBtnClickListender(7, input, suffix, result)
                    }

                    Button {
                        id: button8
                        text: qsTr("8")
                        onClicked: Logic.numberBtnClickListender(8, input, suffix, result)
                    }

                    Button {
                        id: button9
                        text: qsTr("9")
                        onClicked: Logic.numberBtnClickListender(9, input, suffix, result)
                    }

                    Button {
                        id: button0
                        text: qsTr("0")
                        onClicked: Logic.numberBtnClickListender(0, input, suffix, result)
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

}


}

