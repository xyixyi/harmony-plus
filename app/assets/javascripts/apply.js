$(function () {

  var stepNumber = 0,
    sumProgPortion = 0,
    appStepsTotal = $('.application').length,
    progPortion = 100 / appStepsTotal;

  // APPLICATION FORM
  $('#next').on('click', function (e) {
    e.preventDefault();

    if ($(this).hasClass('submit')) {
      return;
    }

    var $inView = $('.current');

    // if(!$inView.find('input,select,textarea').valid()) {
    //   return false;
    // }

    $('.current').next().removeClass('next').addClass('current');
    $inView.removeClass('current').addClass('prev');

    stepNumber++;

    sumProgPortion = sumProgPortion + progPortion;

    if (stepNumber > 0) {
      $('#prev').show();
    }

    if (stepNumber === appStepsTotal - 1) {
      $(this).addClass('submit');
      $(this).text("Submit")
      e.stopPropagation();
    }

  });
  
    $('#prev').on('click', function (e) {
    e.preventDefault();

    var $inView = $('.current');

    $('.current').prev().removeClass('prev').addClass('current');
    $inView.removeClass('current').addClass('next');

    stepNumber--;

    // sumProgPortion = sumProgPortion - progPortion;
    // $('.progress-bar').css("width", sumProgPortion + "%");

    if (stepNumber < 1) {
      $(this).hide();
    }

    if (stepNumber < appStepsTotal - 1) {
      $('#next').removeClass('submit');
      $('#next').text("Next")
    }

  });
})