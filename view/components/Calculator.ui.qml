import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

import "qrc:/view/Util.js" as Logic


Rectangle {
    property var counter: 0
    width: 400
    height: 800

    ColumnLayout {

        Screen{
            id: screen
        }

        Keyboard{
            button1.onClicked: counter = Logic.onKeyBtnListener(1, screen.input, screen.suffix, screen.result,counter);
            button2.onClicked: counter = Logic.onKeyBtnListener(2, screen.input, screen.suffix, screen.result,counter);
            button3.onClicked: counter = Logic.onKeyBtnListener(3, screen.input, screen.suffix, screen.result,counter);
            button4.onClicked: counter = Logic.onKeyBtnListener(4, screen.input, screen.suffix, screen.result,counter);
            button5.onClicked: counter = Logic.onKeyBtnListener(5, screen.input, screen.suffix, screen.result,counter);
            button6.onClicked: counter = Logic.onKeyBtnListener(6, screen.input, screen.suffix, screen.result,counter);
            button7.onClicked: counter = Logic.onKeyBtnListener(7, screen.input, screen.suffix, screen.result,counter);
            button8.onClicked: counter = Logic.onKeyBtnListener(8, screen.input, screen.suffix, screen.result,counter);
            button9.onClicked: counter = Logic.onKeyBtnListener(9, screen.input, screen.suffix, screen.result,counter);
            button0.onClicked: counter = Logic.onKeyBtnListener(0, screen.input, screen.suffix, screen.result,counter);

            buttonPlus.onClicked: counter = Logic.onKeyBtnListener('+', screen.input, screen.suffix, screen.result,counter);
            buttonSubtraction.onClicked: counter = Logic.onKeyBtnListener('-', screen.input, screen.suffix, screen.result,counter);
            buttonMulti.onClicked: counter = Logic.onKeyBtnListener('*', screen.input, screen.suffix, screen.result,counter);
            buttonDivision.onClicked: counter = Logic.onKeyBtnListener('/', screen.input, screen.suffix, screen.result,counter);
            buttonLeftbra.onClicked: counter = Logic.onKeyBtnListener('(', screen.input, screen.suffix, screen.result,counter);
            buttonRightbra.onClicked: counter = Logic.onKeyBtnListener(')', screen.input, screen.suffix, screen.result,counter);
            buttonEnter.onClicked: counter = Logic.onEnterBtnListener(exp,screen.input, screen.suffix, screen.result,counter);

            buttonBackspace.onClicked: Logic.onBackspaceBtnListener(screen.input);

        }

    }
}

