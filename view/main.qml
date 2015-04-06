import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

import "qrc:/view/Util.js" as Logic
import "qrc:/view/components" as Components

ApplicationWindow {
    id: applicationWindow1
    title: qsTr("Calculater")
    width: 641
    height: 480
    visible: true

    menuBar: MenuBar {
        Menu {
            title: qsTr("&File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: messageDialog.show(qsTr("Open action triggered"));
            }
            MenuItem {
                text: qsTr("E&xit")
                onTriggered: Qt.quit();
            }
        }
    }
    Components.Printfx{
        id: pfx
        width: 585
        height: 98
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 1
        anchors.top: parent.top
        anchors.topMargin: 30

    }

    Components.MainForm {
        anchors.bottom: parent.bottom
        button1.onClicked: Logic.numberBtnClickListender(1, pfx.input, pfx.suffix, pfx.result);
        button2.onClicked: Logic.numberBtnClickListender(2, pfx.input, pfx.suffix, pfx.result);
        button3.onClicked: Logic.numberBtnClickListender(3, pfx.input, pfx.suffix, pfx.result);
        button4.onClicked: Logic.numberBtnClickListender(4, pfx.input, pfx.suffix, pfx.result);
        button5.onClicked: Logic.numberBtnClickListender(5, pfx.input, pfx.suffix, pfx.result);
        button6.onClicked: Logic.numberBtnClickListender(6, pfx.input, pfx.suffix, pfx.result);
        button7.onClicked: Logic.numberBtnClickListender(7, pfx.input, pfx.suffix, pfx.result);
        button8.onClicked: Logic.numberBtnClickListender(8, pfx.input, pfx.suffix, pfx.result);
        button9.onClicked: Logic.numberBtnClickListender(9, pfx.input, pfx.suffix, pfx.result);
        button0.onClicked: Logic.numberBtnClickListender(0, pfx.input, pfx.suffix, pfx.result);
        buttonEnter.onClicked: {
            exp.expression = pfx.input.text;
            pfx.suffix.text = exp.suffix;
            pfx.result.text = exp.value;
            pfx.input.text += ' ';
        }
        buttonBackspace.onClicked: {
            pfx.input.text = '';
        }
        buttonPlus.onClicked: {
            pfx.input.text += '+';
        }
        buttonSubtraction.onClicked: {
            pfx.input.text += '-';
        }
        buttonMulti.onClicked: {
            pfx.input.text += '*';
        }
        buttonDivision.onClicked: {
            pfx.input.text += '/';
        }
        buttonLeftbra.onClicked: {
            if (pfx.input.text == '0')
                pfx.input.text = '';
            pfx.input.text += '(';
        }
        buttonRightbra.onClicked: {
            if (pfx.input.text == '0')
                pfx.input.text = '';
            pfx.input.text += ')';
        }
    }

    MessageDialog {
        id: messageDialog
        title: qsTr("May I have your attention, please?")

        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }

}
