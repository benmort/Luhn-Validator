$(function() {
pop_init();
form_init();
});

function pop_init(){
  $('#cc_populate').click(function(event) {
    event.preventDefault();
    $("#log").html("Loading").fadeIn();
    $.get("data", null, function(data) {
      $('#cc_input').val(data);
      $("#log").html("Complete").delay(1000).fadeOut();
    });
  });
}

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
