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

  $(".edit-btn").on("click", function(e){
    $(this).parent().find(".edit-btn").hide();
    $(this).parent().find("#hidden-edit").show();
    $(this).parent().find("#delete-item").hide();
  });
});
