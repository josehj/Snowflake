$(function(){
  function counnSentences(){
      var input = $("#new_paragraph").val().split('.').filter(function(v){return v!==''}).length;
      $("#counter").text(input);
  };
  $('#new_paragraph').keyup(function(){
      counnSentences();
  });
  $('#new_paragraph').change(function(){
      counnSentences();
  });

  $('#new_paragraph').ready(function(){
      counnSentences();
  });

  $("#saveChanges").click(function() {
    var id_ins = document.URL.split("/");
    paragraph = $("#new_paragraph").val();
    var configuration ={
      'paragraph'        : JSON.stringify(paragraph),
      'story_id'        : JSON.stringify(id_ins[4]),
    };
    $.ajax({
      type: "GET",
      dataType: 'json',
      contentType: "application/json; charset=utf-8",
      url: "/story/"+id_ins[4]+"/step/two",
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
