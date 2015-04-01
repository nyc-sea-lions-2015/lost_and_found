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
    ("#comment-create").hide();
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
});
