.pragma library

function onKeyBtnListener(value, input, suffix, result,counter) {
    if(counter == 1){
        input.text = '';
        suffix.text = '0';
        result.text = '0';
        counter = 0;
    }
    if (input.text == '0')
        input.text = '';
    input.text += value;
    return counter ;
}

function onEnterBtnListener(exp, input, suffix, result,counter) {
    exp.expression = input.text;
    if(exp.isError == true){
        suffix.text = "error";
        result.text = "error";
        counter = 1;


    }
    else {
        suffix.text = exp.suffix;
        result.text = exp.value;
        counter = 1;

    }
        return counter ;
}

function onBackspaceBtnListener(input){
    input.text = '';
}
