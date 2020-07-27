// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require activestorage
//= require turbolinks
//= require semantic-ui
//= require_tree .


submit_message = () => {
  // submits chatroom message when 'enter' is pressed
  $('#body').on('keydown',function(e){
    if (e.keyCode == 13){
      $('button').click();
      e.target.value = "";
    }
  })
}

scroll_bottom = () => {
  // automatically keeps the chatroom scrolled to the bottom
  if ($('#message-container').length > 0){
      $('#messages').scrollTop($('#messages')[0].scrollHeight)
  }
}



showSignUpForm = (e) => {
  // reveal signup form modal
  e.preventDefault();
  console.log(e)
  $('.ui.modal')
  .modal('show');
}

signUpListner = () => {
  // listen for click on signup links
  document.querySelectorAll('.sign-link').forEach(signUpLink => {
    signUpLink.addEventListener('click', showSignUpForm)
  })
}

$(document).on('turbolinks:load',function(){
    $('.ui.dropdown')
    .dropdown()
    ;
    $('.message .close')
  .on('click', function() {
    $(this)
      .closest('.message')
      .transition('fade')
    ;
  })
  scroll_bottom();
  submit_message();
  signUpListner();
});
