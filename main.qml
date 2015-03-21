import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    id: applicationWindow1
    title: qsTr("Culcalater")
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
    Printfx{
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

    MainForm {
        anchors.bottom: parent.bottom
        button1.onClicked: {
            if (pfx.input.text == '0')
                pfx.input.text = '';
            pfx.input.text += '1';
        }
        button2.onClicked: {
            if (pfx.input.text == '0')
                pfx.input.text = '';
            pfx.input.text += '2';
        }
        button3.onClicked: {
            if (pfx.input.text == '0')
                pfx.input.text = '';
            pfx.input.text += '3';
        }
        button4.onClicked: {
            if (pfx.input.text == '0')
                pfx.input.text = '';
            pfx.input.text += '4';
        }
        button5.onClicked: {
            if (pfx.input.text == '0')
                pfx.input.text = '';
            pfx.input.text += '5';
        }
        button6.onClicked: {
            if (pfx.input.text == '0')
                pfx.input.text = '';
            pfx.input.text += '6';
        }
        button7.onClicked: {
            if (pfx.input.text == '0')
                pfx.input.text = '';
            pfx.input.text += '7';
        }
        button8.onClicked: {
            if (pfx.input.text == '0')
                pfx.input.text = '';
            pfx.input.text += '8';
        }
        button9.onClicked: {
            if (pfx.input.text == '0')
                pfx.input.text = '';
            pfx.input.text += '9';
        }
        button0.onClicked: {
            if (pfx.input.text == '0')
                pfx.input.text = '';
            pfx.input.text += '0';
        }
        buttonEnter.onClicked: {
            //.cpp
        }
        buttonBack.onClicked: {
            pfx.input.text = '';
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
