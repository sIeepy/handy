$.noConflict()
$(document).ready(function() {
  $('.js-switch').attr("checked", false);
  $('.js-property-input').addClass('hidden');

  $('.js-property-btn').click(function() {
    var container = $(this).parents('.js-property-container');
    container.find('.js-property-input').removeClass('hidden');
    container.find('.js-property-text').addClass('hidden');
  });

  var elems = Array.prototype.slice.call(document.querySelectorAll('.js-switch'));

  elems.forEach(function(html) {
    var switchery = new Switchery(html);
  });

  $('.js-switch').on('change', function() {
    if ($(this).is(":checked")) {
      $('.js-property-btn').removeClass('hidden')
      $('.js-property-text').removeClass('hidden')
    } else {
      $('.js-property-btn').addClass('hidden')
      $('.form-control').each(function() {
        if ($(this).value === undefined) {
            $('.js-property-input').addClass('hidden')
            $('.js-property-text').removeClass('hidden')
        }
      });
    }
  });
  $('a[data-toggle="tab"]').on('click', function(e) {
    localStorage.setItem('lastTab', $(e.target).attr('href'));
  });
  var lastTab = localStorage.getItem('lastTab');
  if (lastTab) {
    $('#myTab a[href="' + lastTab + '"]').tab('show');
  }
});
