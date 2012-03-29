$(function() {
form_init();
});

function form_init(){
  $('#cc_submit').click(function(event) {
    event.preventDefault();
    $("#log").html("Loading").fadeIn();
    var $form = $('#cc_form'),
        params = $form.serialize(),
        url = $form.attr('action');
    $.post(url, params, function(data) {
    });
  });
}
