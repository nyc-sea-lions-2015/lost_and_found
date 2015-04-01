$(document).ready(function() {

  $(".login").click(function(e) {
    e.preventDefault();
    $("#signin").show();
    $("#signup").hide();
  });


  $(".register").click(function(e) {
     e.preventDefault();
    $("#signup").show();
    $("#signin").hide();
  });

  $("#new-item").click(function(){
    $("#create-item").show();
  });

  $("#comment-create").on("click", function(){
    $("#hidden_create").show();
    $("#comment-create").hide();
  });

  $(".edit-btn").on("click", function(){
    $(this).hide();
    $(this).parent().find(".hidden-edit").show();
    $(this).parent().find(".delete-item").hide();
  });

  $(".comment-edit-btn").on("click", function() {
    $(this).parent().find(".hidden-comment-edit").show();
    $(this).hide();
    $(this).parent().find(".delete-comment").hide();
  });

  $(".delete-comment").on("submit", function(event) {
    event.preventDefault();
    var $target = $(event.target);
    $.ajax({
      type: "DELETE",
      url: $target.attr("action"),
    }).done(function(response) {
       $target.closest('li.comment-list').remove()
    });
  });

   $(".new-comment-form").on("submit",function(event) {
    event.preventDefault();
    var $target = $(event.target);
    $.ajax({
      type: $target.attr("method"),
      url:  $target.attr("action")+".json",
      data: $target.serialize(),
      dataType: "json",
    }).done(function(response) {
        $target.parent().parent().find("ul").append("<li class='comment-list'><p class='comment-text'>" +response.text + "</p></li>");
        $target.parent().hide();
        $("#comment-create").show();
    })
  });


});
