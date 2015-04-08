.pragma library

function onKeyBtnListener(value, input, suffix, result) {
    if(input.text[input.text.length-1] == ' '){
        input.text = '';
        suffix.text = '0';
        result.text = '0';
    }
    if (input.text == '0')
        input.text = '';
    input.text += value;
}

function onEnterBtnListener(exp, input, suffix, result) {
    exp.expression = input.text;
    if(exp.isError == true){
        suffix.text = "error";
        result.text = "error";
        input.text += ' ';

    }
    else {
        suffix.text = exp.suffix;
        result.text = exp.value;
        input.text += ' ';
    }

}

function onBackspaceBtnListener(input){
    input.text = '';
}
