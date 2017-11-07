$(document).ready(function() {
  $('.js-property-btn').click(function() {
    var container = $(this).parents('.js-property-container');
    container.find('.js-property-input').removeClass('hidden');
    container.find('.js-property-text').addClass('hidden');
  });
});
