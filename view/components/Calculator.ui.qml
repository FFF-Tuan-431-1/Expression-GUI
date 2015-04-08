import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

import "qrc:/view/Util.js" as Logic

Rectangle {
    width: 400
    height: 800

    ColumnLayout {

        Screen{
            id: screen
        }

        Keyboard{
            button1.onClicked: Logic.onKeyBtnListener(1, screen.input, screen.suffix, screen.result);
            button2.onClicked: Logic.onKeyBtnListener(2, screen.input, screen.suffix, screen.result);
            button3.onClicked: Logic.onKeyBtnListener(3, screen.input, screen.suffix, screen.result);
            button4.onClicked: Logic.onKeyBtnListener(4, screen.input, screen.suffix, screen.result);
            button5.onClicked: Logic.onKeyBtnListener(5, screen.input, screen.suffix, screen.result);
            button6.onClicked: Logic.onKeyBtnListener(6, screen.input, screen.suffix, screen.result);
            button7.onClicked: Logic.onKeyBtnListener(7, screen.input, screen.suffix, screen.result);
            button8.onClicked: Logic.onKeyBtnListener(8, screen.input, screen.suffix, screen.result);
            button9.onClicked: Logic.onKeyBtnListener(9, screen.input, screen.suffix, screen.result);
            button0.onClicked: Logic.onKeyBtnListener(0, screen.input, screen.suffix, screen.result);

            buttonPlus.onClicked: Logic.onKeyBtnListener('+', screen.input, screen.suffix, screen.result);
            buttonSubtraction.onClicked: Logic.onKeyBtnListener('-', screen.input, screen.suffix, screen.result);
            buttonMulti.onClicked: Logic.onKeyBtnListener('*', screen.input, screen.suffix, screen.result);
            buttonDivision.onClicked: Logic.onKeyBtnListener('/', screen.input, screen.suffix, screen.result);
            buttonLeftbra.onClicked: Logic.onKeyBtnListener('(', screen.input, screen.suffix, screen.result);
            buttonRightbra.onClicked: Logic.onKeyBtnListener(')', screen.input, screen.suffix, screen.result);
            buttonEnter.onClicked: Logic.onEnterBtnListener(exp,screen.input, screen.suffix, screen.result);

            buttonBackspace.onClicked: Logic.onBackspaceBtnListener(screen.input);

        }

    }
}

