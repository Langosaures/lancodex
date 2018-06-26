var step = 0;
var btnSuiv = $('#fleche-suiv');
btnSuiv.click(function (event) {
    step++;
    console.log(step);
    switch (step) {
        case 1:
            $('#1').hide();
            $('#2').show();
            break;
        case 2:
            $('#2').hide();
            $('#3').show();
            break;
    }
})
