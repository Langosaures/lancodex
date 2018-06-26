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
        case 3:
            $('#3').hide();
            $('#4').show();
            $('.elementLanca').fadeIn(300);
            break;
        case 4:
            $('#4').hide();
            $('#5').show();
            break;
        case 5:
            $('#5').hide();
            $('#6').show();
            $('.elementLanca').fadeOut(300);
            $('.dinoTuto').fadeIn(500);
            break;
        case 6:
            $('#6').hide();
            $('#7').show();
            $('.dinoTuto').fadeOut(300);
            $('.imageLanca').removeClass('locked');
            $('.elementLanca').fadeIn(500);
            break;
        case 7:
            $('#7').hide();
            $('#8').show();
            $('.elemenetLanca').fadeOut(300);
            $('#fleche-suiv').hide();
            $('#fleche-menu').show();
    }
})
