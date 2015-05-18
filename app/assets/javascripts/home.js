// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

function choose(id, question, answer) {
    var resource = '/answer/' + id + '/' + question + '/' + answer
    $.post(resource, function(data)  {});
}