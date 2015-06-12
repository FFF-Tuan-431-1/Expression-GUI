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
    if(value == 'd'){
        input.text += '0';
        input.text += '0';
    }
    else
        input.text += value;
    return counter ;
}

function onEnterBtnListener(exp, input, suffix, result,counter) {
    exp.expression = input.text;
    if(exp.isError == true){
        suffix.text = "error";
        result.text = "error";
    }
    else {
        suffix.text = exp.suffix;
        result.text = exp.value;
    }
        counter = 1;
        return counter ;
}

function onBackspaceBtnListener(input){
    input.text = '';
}

function onDeleteBtnListener(input, counter){
    input.text = input.text.substring(0,input.text.length-1);
    counter = 0;
    return counter;
}

function onAnsBtnListener(input, result, counter){
    if (result.text == 0&&input.text == 0){
        counter = 0;
        return counter;
    }
    if (result.text == "error"){
        counter = 1;
        return counter;
    }
    if (counter == 1){
    input.text = result.text;
    }
    else {
        input.text += result.text;
    }
    counter = 0;
    return counter;

}
