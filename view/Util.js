.pragma library

function numberBtnClickListender(number, input, suffix, result) {
    if(input.text[input.text.length-1] == ' '){
        input.text = '';
        suffix.text = '0';
        result.text = '0';
    }
    if (input.text == '0')
        input.text = '';
    input.text += number;
}

