$(function(){

  $("#saveChanges").click(function() {
    var id_ins = document.URL.split("/");
    new_name = $("#new_name").val();
    new_last_name = $("#new_last_name").val();
    new_importance = $("#new_importance").val();
    new_summary = $("#new_summary").val();
    new_motivation = $("#new_motivation").val();
    new_goal = $("#new_goal").val();
    new_epiphany = $("#new_epiphany").val();
    var configuration ={
      'name'        : JSON.stringify(new_name),
      'last_name'        : JSON.stringify(new_last_name),
      'importance'        : JSON.stringify(new_importance),
      'summary'        : JSON.stringify(new_summary),
      'motivation'        : JSON.stringify(new_motivation),
      'goal'        : JSON.stringify(new_goal),
      'epiphany'        : JSON.stringify(new_epiphany),
      'story_id'        : JSON.stringify(id_ins[4]),
    };
    $.ajax({
      type: "GET",
      dataType: 'json',
      contentType: "application/json; charset=utf-8",
      url: "/story/"+id_ins[4]+"/form/character",
      data: configuration,
      success: function (data) {
        if (data.hasOwnProperty('error')){
          alert(data["error"]);
          return;
        }
        if (data["status"]) {
          $(".notice").text("ok!");
        }else {
          $(".notice").text("error!");
        }
      }
    });
  });
});
